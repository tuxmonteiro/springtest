SET autocommit=0;
START TRANSACTION;
INSERT INTO rolegroup (created_at, created_by, last_modified_at, last_modified_by, version, quarantine, name) VALUES (NOW(), 'system', NOW(), 'system', 0, false, 'SUPER_ADMIN');
SELECT @A:=id FROM rolegroup WHERE rolegroup.name = 'SUPER_ADMIN';
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'ACCOUNT_CREATE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'ACCOUNT_CREATE_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'ACCOUNT_UPDATE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'ACCOUNT_UPDATE_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'ACCOUNT_DELETE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'ACCOUNT_DELETE_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'ACCOUNT_VIEW');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'ACCOUNT_VIEW_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'BALANCEPOLICY_CREATE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'BALANCEPOLICY_CREATE_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'BALANCEPOLICY_UPDATE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'BALANCEPOLICY_UPDATE_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'BALANCEPOLICY_DELETE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'BALANCEPOLICY_DELETE_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'BALANCEPOLICY_VIEW');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'BALANCEPOLICY_VIEW_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'ENVIRONMENT_CREATE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'ENVIRONMENT_CREATE_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'ENVIRONMENT_UPDATE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'ENVIRONMENT_UPDATE_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'ENVIRONMENT_DELETE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'ENVIRONMENT_DELETE_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'ENVIRONMENT_VIEW');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'ENVIRONMENT_VIEW_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'HEALTHCHECK_CREATE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'HEALTHCHECK_CREATE_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'HEALTHCHECK_UPDATE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'HEALTHCHECK_UPDATE_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'HEALTHCHECK_DELETE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'HEALTHCHECK_DELETE_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'HEALTHCHECK_VIEW');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'HEALTHCHECK_VIEW_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'HEALTHSTATUS_CREATE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'HEALTHSTATUS_CREATE_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'HEALTHSTATUS_UPDATE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'HEALTHSTATUS_UPDATE_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'HEALTHSTATUS_DELETE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'HEALTHSTATUS_DELETE_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'HEALTHSTATUS_VIEW');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'HEALTHSTATUS_VIEW_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'POOL_CREATE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'POOL_CREATE_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'POOL_UPDATE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'POOL_UPDATE_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'POOL_DELETE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'POOL_DELETE_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'POOL_VIEW');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'POOL_VIEW_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'PROJECT_CREATE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'PROJECT_CREATE_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'PROJECT_UPDATE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'PROJECT_UPDATE_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'PROJECT_DELETE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'PROJECT_DELETE_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'PROJECT_VIEW');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'PROJECT_VIEW_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'ROLEGROUP_CREATE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'ROLEGROUP_CREATE_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'ROLEGROUP_UPDATE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'ROLEGROUP_UPDATE_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'ROLEGROUP_DELETE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'ROLEGROUP_DELETE_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'ROLEGROUP_VIEW');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'ROLEGROUP_VIEW_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'RULE_CREATE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'RULE_CREATE_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'RULE_UPDATE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'RULE_UPDATE_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'RULE_DELETE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'RULE_DELETE_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'RULE_VIEW');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'RULE_VIEW_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'RULEORDERED_CREATE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'RULEORDERED_CREATE_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'RULEORDERED_UPDATE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'RULEORDERED_UPDATE_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'RULEORDERED_DELETE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'RULEORDERED_DELETE_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'RULEORDERED_VIEW');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'RULEORDERED_VIEW_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'TARGET_CREATE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'TARGET_CREATE_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'TARGET_UPDATE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'TARGET_UPDATE_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'TARGET_DELETE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'TARGET_DELETE_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'TARGET_VIEW');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'TARGET_VIEW_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'TEAM_CREATE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'TEAM_CREATE_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'TEAM_UPDATE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'TEAM_UPDATE_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'TEAM_DELETE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'TEAM_DELETE_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'TEAM_VIEW');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'TEAM_VIEW_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'VIRTUALHOST_CREATE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'VIRTUALHOST_CREATE_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'VIRTUALHOST_UPDATE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'VIRTUALHOST_UPDATE_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'VIRTUALHOST_DELETE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'VIRTUALHOST_DELETE_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'VIRTUALHOST_VIEW');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'VIRTUALHOST_VIEW_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'VIRTUALHOSTGROUP_CREATE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'VIRTUALHOSTGROUP_CREATE_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'VIRTUALHOSTGROUP_UPDATE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'VIRTUALHOSTGROUP_UPDATE_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'VIRTUALHOSTGROUP_DELETE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'VIRTUALHOSTGROUP_DELETE_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'VIRTUALHOSTGROUP_VIEW');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@A, 'VIRTUALHOSTGROUP_VIEW_ALL');
COMMIT;
START TRANSACTION;
INSERT INTO rolegroup (created_at, created_by, last_modified_at, last_modified_by, version, quarantine, name) VALUES (NOW(), 'system', NOW(), 'system', 0, false, 'TEAM_DEFAULT');
SELECT @D:=id FROM rolegroup WHERE rolegroup.name = 'TEAM_DEFAULT';
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@D, 'PROJECT_VIEW');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@D, 'PROJECT_CREATE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@D, 'PROJECT_UPDATE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@D, 'PROJECT_DELETE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@D, 'TEAM_VIEW_ALL');
COMMIT;
START TRANSACTION;
INSERT INTO rolegroup (created_at, created_by, last_modified_at, last_modified_by, version, quarantine, name) VALUES (NOW(), 'system', NOW(), 'system', 0, false, 'PROJECT_DEFAULT');
SELECT @E:=id FROM rolegroup WHERE rolegroup.name = 'PROJECT_DEFAULT';
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@E, 'BALANCEPOLICY_VIEW');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@E, 'BALANCEPOLICY_VIEW_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@E, 'ENVIRONMENT_VIEW');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@E, 'ENVIRONMENT_VIEW_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@E, 'HEALTHCHECK_VIEW');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@E, 'HEALTHCHECK_VIEW_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@E, 'HEALTHSTATUS_VIEW');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@E, 'HEALTHSTATUS_VIEW_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@E, 'POOL_CREATE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@E, 'POOL_UPDATE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@E, 'POOL_DELETE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@E, 'POOL_VIEW');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@E, 'POOL_VIEW_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@E, 'RULE_CREATE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@E, 'RULE_UPDATE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@E, 'RULE_DELETE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@E, 'RULE_VIEW');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@E, 'RULE_VIEW_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@E, 'RULEORDERED_CREATE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@E, 'RULEORDERED_UPDATE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@E, 'RULEORDERED_DELETE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@E, 'RULEORDERED_VIEW');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@E, 'RULEORDERED_VIEW_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@E, 'TARGET_CREATE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@E, 'TARGET_UPDATE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@E, 'TARGET_DELETE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@E, 'TARGET_VIEW');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@E, 'TARGET_VIEW_ALL');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@E, 'VIRTUALHOST_CREATE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@E, 'VIRTUALHOST_UPDATE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@E, 'VIRTUALHOST_DELETE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@E, 'VIRTUALHOST_VIEW');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@E, 'VIRTUALHOSTGROUP_VIEW');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@E, 'VIRTUALHOSTGROUP_CREATE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@E, 'VIRTUALHOSTGROUP_UPDATE');
COMMIT;
START TRANSACTION;
INSERT INTO rolegroup (created_at, created_by, last_modified_at, last_modified_by, version, quarantine, name) VALUES (NOW(), 'system', NOW(), 'system', 0, false, 'USER_DEFAULT');
SELECT @F:=id FROM rolegroup WHERE rolegroup.name = 'USER_DEFAULT';
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@F, 'TEAM_CREATE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@F, 'TEAM_UPDATE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@F, 'TEAM_VIEW');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@F, 'TEAM_DELETE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@F, 'ACCOUNT_CREATE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@F, 'ACCOUNT_UPDATE');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@F, 'ACCOUNT_VIEW');
INSERT INTO rolegroup_roles (rolegroup_id, role) VALUES (@F, 'ACCOUNT_VIEW_ALL');
COMMIT;
SET autocommit=1;