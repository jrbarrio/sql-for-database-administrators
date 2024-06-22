-- Create the project_management group
CREATE GROUP project_management;

-- Grant project_management SELECT privilege
GRANT SELECT ON loan TO project_management;

-- Add Kim's user to project_management group
ALTER GROUP project_management ADD USER klopez;

-- Remove Kim's user from dev_team group
REVOKE dev_team FROM klopez;