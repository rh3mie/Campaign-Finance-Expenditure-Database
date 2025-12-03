-- Query 1
USE campaign_finance_expenditures;

CREATE VIEW payments_with_political_obligation AS
SELECT 
    p.organization AS Organization,
    CONCAT(pb.lname, ', ', pb.fname) AS `Paid By Name`,
    payment_amount AS `Payment Amount`,
    political_obligation AS `Political Obligation`
FROM payees p
JOIN payee_paid_by USING (payee_id)
JOIN paid_bys pb USING (paid_by_id)
JOIN payments USING (payee_id)
WHERE political_obligation = 'Yes'
  AND p.organization IS NOT NULL
  AND pb.lname IS NOT NULL
  AND pb.fname IS NOT NULL
ORDER BY payment_amount DESC;


-- Query 2
USE campaign_finance_expenditures;

CREATE VIEW payment_count_by_payee_and_report AS
SELECT 
    Payee_Name, 
    Report_Type, 
    Payment_Count
FROM (
    SELECT 
        CONCAT(lname, ', ', fname) AS Payee_Name,
        report_filed AS Report_Type,
        COUNT(payment_id) AS Payment_Count
    FROM report_types
    JOIN payments USING (report_type_id)
    JOIN payees USING (payee_id)
    WHERE CONCAT(lname, ', ', fname) IS NOT NULL
    GROUP BY report_filed, Payee_Name
) AS subquery
ORDER BY Payment_Count DESC;


-- Query 3
USE campaign_finance_expenditures;

CREATE VIEW payee_info_with_payments AS
SELECT 
    CONCAT(lname, ', ', fname) AS `Payee Full Name`,
    CONCAT(payee_address, ', ', city, ', ', state, ', ', zipcode) AS `Payee Address`,
    SUM(payment_amount) AS `Payment Amount`,
    expenditure_type AS `Expenditure Type`
FROM payments
JOIN expenditure_types USING (expenditure_type_id)
JOIN payees USING (payee_id)
JOIN addresses USING (address_id)
WHERE CONCAT(lname, ' ', fname) IS NOT NULL
GROUP BY 
    lname, fname, 
    payee_address, city, state, zipcode,
    expenditure_type
ORDER BY SUM(payment_amount) DESC;


-- Query 4
USE campaign_finance_expenditures;

CREATE VIEW payments_by_org_and_expenditure AS
SELECT 
    organization AS `Paid By Organization`,
    expenditure_type AS `Expenditure Type`,
    expense_desc AS `Expense Description`,
    COUNT(payment_id) AS `Number of Payments`
FROM paid_bys
JOIN payments USING (paid_by_id)
JOIN expenses USING (expense_id)
JOIN expenditure_types USING (expenditure_type_id)
WHERE organization IS NOT NULL
GROUP BY 
    organization, 
    expenditure_type, 
    expense_desc
ORDER BY COUNT(payment_id) DESC;


-- Query 5
USE campaign_finance_expenditures;

CREATE VIEW avg_payments_by_organization AS
SELECT 
    COALESCE(pb.organization, 'Other') AS `Paid By Organization`,
    AVG(p.payment_amount) AS Average_Payment
FROM payments p
JOIN paid_bys pb 
    ON p.paid_by_id = pb.paid_by_id
WHERE MONTH(payment_date) IN (1, 2, 3, 4)
GROUP BY pb.organization
ORDER BY Average_Payment DESC;


-- Query 6
USE campaign_finance_expenditures;

CREATE VIEW high_value_payments_by_payee AS
SELECT 
    p.payment_id AS `Payment ID`,
    p.payment_amount AS `Payment Amount`,
    p.payment_date AS `Payment Date`,
    CONCAT(pa.lname, ', ', pa.fname) AS `Payee Name`,
    payee_type AS `Payee Type`
FROM payments p
JOIN payees pa 
    ON p.payee_id = pa.payee_id
WHERE p.payment_amount > (
    SELECT AVG(p2.payment_amount)
    FROM payments p2
    WHERE p2.payee_id = p.payee_id
)
ORDER BY p.payment_amount DESC;
