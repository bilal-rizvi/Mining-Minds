/*
 Copyright [2016] [Taqdir Ali]

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

 */
package org.uclab.mm.kcl.edkat.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;
import org.uclab.mm.kcl.edkat.dao.RuleDAO;
import org.uclab.mm.kcl.edkat.datamodel.Rule;

/**
* This is service implementation class for the rule it provides implementation to
* create, update, retrieve of rules, conditions, conclusions, and situation
 * @author  Taqdir Ali
 * @version 1.0
 * @since   2015-08-16
 * */
public class RuleServiceImpl implements RuleService {

	private RuleDAO ruleDAO;
	public RuleDAO getRuleDAO() {
		return ruleDAO;
	}
	public void setRuleDAO(RuleDAO ruleDAO) {
		this.ruleDAO = ruleDAO;
	}

	/**
	 * This function is for add new rule with conditions, conclusions, and situations
	 * @param objRule
	 * @return Object of Rule
	*/
	@Transactional
	public Rule addRule(Rule objRule) {
		return this.ruleDAO.addRule(objRule);
	}

	/**
	 *  This interface function is for update the existing rule with conditions, conclusions, and situations
	 * @param objRule
	 * @return Object of Rule
	*/
	@Transactional
	public Rule updateRule(Rule objRule) {
		return this.ruleDAO.updateRule(objRule);
	}

	/**
	 * This function get all rules with conditions, conclusions, and situations
	 * @return List of Rules
	*/
	public List<Rule> listRules() {
		return this.ruleDAO.listRule();
	}

	/**
	 * This function get a specific rule by rule id (primary key)
	 * @param id
	 * @return Object of Rule
	*/
	public Rule getRuleById(int id) {
		return this.ruleDAO.getRuleById(id);
	}

	/**
	 * This function delete a specific rule by rule id (primary key)
	 * @param id
	*/
	public void removeRule(int id) {
		this.ruleDAO.removeRule(id);
	}

}
