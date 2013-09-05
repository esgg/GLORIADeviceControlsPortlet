
<%
	/**
	 * Copyright (c) 2000-2011 Liferay, Inc. All rights reserved.
	 *
	 * This library is free software; you can redistribute it and/or modify it under
	 * the terms of the GNU Lesser General Public License as published by the Free
	 * Software Foundation; either version 2.1 of the License, or (at your option)
	 * any later version.
	 *
	 * This library is distributed in the hope that it will be useful, but WITHOUT
	 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
	 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
	 * details.
	 */
%>

<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet"%>
<%@ taglib uri="http://liferay.com/tld/aui" prefix="aui"%>
<%@ taglib uri="http://liferay.com/tld/ui" prefix="liferay-ui" %>

<portlet:defineObjects />
<script src="http://cdn.alloyui.com/1.5.1/aui/aui-min.js"></script>
<script>
YUI({filter:'raw'}).use("yui", "tabview", function(Y) {    
	var tabview = new Y.TabView({
		srcNode:'#controls'
	});    
	tabview.render();
});
</script>
<div id="controls">
	<ul>
		<li><a href="#mount_tab"><liferay-ui:message
					key="label-mount-tab" /></a></li>
		<li><a href="#ccd_tab"><liferay-ui:message
					key="label-ccd-tab" /></a></li>
		<li><a href="#focus_tab"><liferay-ui:message
					key="label-focus-tab" /></a></li>
	</ul>
	<div class="tab-content">
		<div id="mount_tab" class="tab-pane">
			<div id="logo"></div>
			<div id="controls">
				<table>
					<tr>
						<td>
						<div id="controlMount">
							<table border="0" height="100%">
								<tr align="center">
									<td></td>
									<td></td>       
								   <td>
							      		<img name="<portlet:namespace />northButton" src="<%=request.getContextPath()%>/images/mount/arrow2_up.png" 
								      		onmouseover="document.<portlet:namespace />northButton.src='<%=request.getContextPath()%>/images/mount/arrow2_up_hover.png';" 
								        	onmouseout="document.<portlet:namespace />northButton.src='<%=request.getContextPath()%>/images/mount/arrow2_up.png';" 
								        	onClick="<portlet:namespace />moveMount('north')"
								      		/>
								      		
								    </td>
								    <td></td>
								    <td></td>       
								</tr>
								<tr align="center">
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								</tr>
								<tr align="center">
									<td>
							   			<img name="<portlet:namespace />westButton" src="<%=request.getContextPath()%>/images/mount/arrow2_left.png" 
									   		onmouseover="document.<portlet:namespace />westButton.src='<%=request.getContextPath()%>/images/mount/arrow2_left_hover.png';" 
									       	onmouseout="document.<portlet:namespace />westButton.src='<%=request.getContextPath()%>/images/mount/arrow2_left.png';"
									       	onClick="<portlet:namespace />moveMount('west')"
									      	/>
									      	
								   </td>
								   <td align="right"></td>
								   <td></td>
								   <td align="left"></td>
								   <td>       
							    		<img name="<portlet:namespace />eastButton" src="<%=request.getContextPath()%>/images/mount/arrow2_right.png" 
											onmouseover="document.<portlet:namespace />eastButton.src='<%=request.getContextPath()%>/images/mount/arrow2_right_hover.png';" 
											onmouseout="document.<portlet:namespace />eastButton.src='<%=request.getContextPath()%>/images/mount/arrow2_right.png';"
											onClick="<portlet:namespace />moveMount('east')"
										  />
										  	  
								   </td>
								   </tr>
								   <tr align="center">
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								</tr>
							   <tr align="center">
							   <td></td>
							   <td></td>        
							   <td>
							   		<img name="<portlet:namespace />southButton" src="<%=request.getContextPath()%>/images/mount/arrow2_down.png" 
							   			onmouseover="document.<portlet:namespace />southButton.src='<%=request.getContextPath()%>/images/mount/arrow2_down_hover.png';" 
							   			onmouseout="document.<portlet:namespace />southButton.src='<%=request.getContextPath()%>/images/mount/arrow2_down.png';"
										onClick="<portlet:namespace />moveMount('south')"
							   			/>
							   			
							   	</td>
							   	<td></td> 
							   	<td></td>          
							   </tr>
						</table>
						</div> <!-- Control mount -->
						</td>
						<td>
							<div id="informationMount">
							<label class="aui-field-label raLabel"> <liferay-ui:message
					key="label-ra" /> :</label>
					<label class="status-field status-field-ok"> 14.32445</label>
							</div>
						</td>
					</tr>
				</table>
			</div>
		</div>
		<div id="ccd_tab" class="tab-pane">
			<p>Doloremque beatae rem voluptate nulla perspiciatis atque
				laudantium nihil impedit molestiae fuga veritatis quibusdam nam
				maiores aliquid. Deserunt dolorum quas temporibus enim ex nihil nemo
				perspiciatis. Nisi deserunt rem id pariatur in nostrum?</p>
		</div>
		<div id="focus_tab" class="tab-pane">
			<p>Aliquid ipsum asperiores alias temporibus autem impedit soluta
				ut id iure explicabo veritatis consectetur debitis eaque recusandae
				odit quas nobis maxime saepe. Incidunt amet obcaecati. Ducimus
				soluta unde repellat laboriosam fuga modi rem itaque!</p>
		</div>
	</div>
</div>