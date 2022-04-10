<%@page language="java" import="acme.framework.helpers.PrincipalHelper,acme.roles.Provider,acme.roles.Consumer"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="acme" uri="urn:jsptagdir:/WEB-INF/tags"%>

<acme:menu-bar code="master.menu.home">
	<acme:menu-left>
		<acme:menu-option code="master.menu.anonymous" access="isAnonymous()">
      		<acme:menu-suboption code="master.menu.anonymous.user-account.list-all-user-accounts" action="/any/user-account/list-all-user-accounts"/>
			<acme:menu-suboption code="master.menu.anonymous.chirp.list-recent" action="/any/chirp/list-recent"/>
			<acme:menu-suboption code="master.menu.anonymous.item.list" action="/any/item/list"/>
		</acme:menu-option>
		
		<acme:menu-option code="master.menu.authenticated" access="hasRole('Authenticated')">
			<acme:menu-suboption code="master.menu.authenticated.user-account.list-all-user-accounts" action="/any/user-account/list-all-user-accounts"/>
			<acme:menu-suboption code="master.menu.authenticated.chirp.list-recent" action="/any/chirp/list-recent"/>
			<acme:menu-suboption code="master.menu.authenticated.item.list" action="/any/item/list"/>
			<acme:menu-separator/>
			<acme:menu-suboption code="master.menu.authenticated.announcement.list-recent" action="/authenticated/announcement/list-recent"/>
			<acme:menu-suboption code="master.menu.authenticated.system-configuration" action="/authenticated/system-configuration/show"/>
		</acme:menu-option>

		<acme:menu-option code="master.menu.administrator" access="hasRole('Administrator')">
			<acme:menu-suboption code="master.menu.administrator.user-account.list-all-user-accounts" action="/any/user-account/list-all-user-accounts"/>			
			<acme:menu-suboption code="master.menu.administrator.chirp.list-recent" action="/any/chirp/list-recent"/>
			<acme:menu-suboption code="master.menu.administrator.item.list" action="/any/item/list"/>
			<acme:menu-separator/>
			<acme:menu-suboption code="master.menu.administrator.populate-initial" action="/administrator/populate-initial"/>
			<acme:menu-suboption code="master.menu.administrator.populate-sample" action="/administrator/populate-sample"/>
			<acme:menu-suboption code="master.menu.administrator.shut-down" action="/administrator/shut-down"/>
		</acme:menu-option>

		<acme:menu-option code="master.menu.patron" access="hasRole('Patron')">
			<acme:menu-suboption code="master.menu.patron.user-account.list-all-user-accounts" action="/any/user-account/list-all-user-accounts"/>
			<acme:menu-suboption code="master.menu.patron.chirp.list-recent" action="/any/chirp/list-recent"/>
			<acme:menu-suboption code="master.menu.patron.item.list" action="/any/item/list"/>
			<acme:menu-separator/>
			<acme:menu-suboption code="master.menu.patron.system-configuration" action="/patron/system-configuration/show"/>
			<acme:menu-suboption code="master.menu.patron.announcement.list-recent" action="/patron/announcement/list-recent"/>	
			<acme:menu-suboption code="master.menu.patron.my-patronages" action="/patron/patronage/list-mine"/>	
		</acme:menu-option>
		
		<acme:menu-option code="master.menu.inventor" access="hasRole('Inventor')">
			<acme:menu-suboption code="master.menu.inventor.user-account.list-all-user-accounts" action="/any/user-account/list-all-user-accounts"/>
			<acme:menu-suboption code="master.menu.inventor.chirp.list-recent" action="/any/chirp/list-recent"/>
			<acme:menu-suboption code="master.menu.inventor.item.list" action="/any/item/list"/>
			<acme:menu-separator/>
			<acme:menu-suboption code="master.menu.inventor.my-items" action="/inventor/item/list-mine-items"/>
			<acme:menu-suboption code="master.menu.inventor.patronage-reports" action="/inventor/patronage-report/list-all"/>
			<acme:menu-suboption code="master.menu.inventor.my-patronages" action="/inventor/patronage/list-mine"/>
			<acme:menu-separator/>
			<acme:menu-suboption code="master.menu.inventor.system-configuration" action="/inventor/system-configuration/show"/>
			<acme:menu-separator/>
			<acme:menu-suboption code="master.menu.inventor.announcement.list-recent" action="/inventor/announcement/list-recent"/>
		</acme:menu-option>
		
	</acme:menu-left>

	<acme:menu-right>
		<acme:menu-option code="master.menu.sign-up" action="/anonymous/user-account/create" access="isAnonymous()"/>
		<acme:menu-option code="master.menu.sign-in" action="/master/sign-in" access="isAnonymous()"/>

		<acme:menu-option code="master.menu.user-account" access="isAuthenticated()">
			<acme:menu-suboption code="master.menu.user-account.general-data" action="/authenticated/user-account/update"/>
			<acme:menu-suboption code="master.menu.user-account.become-patron" action="/authenticated/patron/create" access="!hasRole('Patron')"/>
			<acme:menu-suboption code="master.menu.user-account.patron" action="/authenticated/patron/update" access="hasRole('Patron')"/>
			<acme:menu-suboption code="master.menu.user-account.become-inventor" action="/authenticated/inventor/create" access="!hasRole('Inventor')"/>
			<acme:menu-suboption code="master.menu.user-account.inventor" action="/authenticated/inventor/update" access="hasRole('Inventor')"/>
		</acme:menu-option>

		<acme:menu-option code="master.menu.sign-out" action="/master/sign-out" access="isAuthenticated()"/>
	</acme:menu-right>
</acme:menu-bar>