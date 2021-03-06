<%--
Copyright 2016 Goldman Sachs.
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

  http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.
--%>
<%@ page import="com.gs.fw.common.mithra.generator.*" %>
<%@ page import="com.gs.fw.common.mithra.generator.MithraEmbeddedValueObjectTypeWrapper" %>
<%
	MithraEmbeddedValueObjectTypeWrapper wrapper = (MithraEmbeddedValueObjectTypeWrapper) request.getAttribute("mithraWrapper");
	String packageName = wrapper.getPackageName();
	String classType = wrapper.getClassName();
	String abstractClassType = wrapper.getAbstractClassName();
    String extractorsType = classType + "Extractors";
%>
package <%= packageName %>;

import com.gs.fw.common.mithra.MithraObject;
<%@ include file="../CvsComment.jspi" %>
public class <%= classType %> extends <%= abstractClassType %>
{
    <%@ include file="../VersionId.jspi" %>

    public <%= classType %>()
	{
		super();
	}

	protected <%= classType %>(MithraObject ref, <%= extractorsType %> attributes)
	{
		super(ref, attributes);
	}
}