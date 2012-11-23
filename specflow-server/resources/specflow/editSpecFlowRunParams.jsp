<%@ taglib prefix="props" tagdir="/WEB-INF/tags/props" %>
<%@ taglib prefix="l" tagdir="/WEB-INF/tags/layout" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="bs" tagdir="/WEB-INF/tags" %>

<jsp:useBean id="propertiesBean" scope="request" type="jetbrains.buildServer.controllers.BasePropertiesBean"/>
<jsp:useBean id="sf" class="specflow.server.SpecFlowBean" scope="request"/>

<l:settingsGroup title="SpecFlow settings">
    <tr>
        <th>NUnit-Console.exe:</th>
        <td>
            <props:textProperty name="${sf.NUnitConsoleExe}" className="longField"/>
            <span class="smallNote">Specify path to nunit-console.exe.</span>
            <span class="error" id="error_${sf.NUnitConsoleExe}"></span>
        </td>
    </tr>
</l:settingsGroup>