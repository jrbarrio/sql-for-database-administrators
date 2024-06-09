-- Create the loan table
CREATE TABLE loan (
    borrower_id INTEGER REFERENCES borrower(id),
    bank_id INTEGER REFERENCES bank(id),
  	-- 'approval_date': the loan approval date
    approval_date DATE NOT NULL DEFAULT CURRENT_DATE,
    -- 'gross_approval': amounts up to $5,000,000.00
  	gross_approval DECIMAL(9, 2) NOT NULL,
  	-- 'term_in_months': total # of months for repayment
    term_in_months SMALLINT NOT NULL,
    -- 'revolver_status': TRUE for revolving line of credit
  	revolver_status BOOLEAN NOT NULL DEFAULT FALSE,
  	initial_interest_rate DECIMAL(4, 2) NOT NULL
);