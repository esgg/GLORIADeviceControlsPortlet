
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
<%@ taglib uri="http://liferay.com/tld/ui" prefix="liferay-ui"%>

<portlet:defineObjects />
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<style>
 #feedback { font-size: 1.4em; }
  #selectable .ui-selecting { background: #FECA40; }
  #selectable .ui-selected { background: #F39814; color: white; }
  #selectable { list-style-type: none; margin: 0; padding: 0; width: 60%; }
  #selectable li { margin: 3px; padding: 0.4em; font-size: 1em; height: 18px; }
  
  #selectablePlanet .ui-selecting { background: #FECA40; }
  #selectablePlanet .ui-selected { background: #F39814; color: white; }
  #selectablePlanet { list-style-type: none; margin: 0; padding: 0; width: 60%; }
  #selectablePlanet li { margin: 3px; padding: 0.4em; font-size: 1em; height: 18px; }
  
  .labelStyle {font-size: 1em; font-weight:bold; font-family:"Times New Roman",Georgia,Serif; margin:5px}
  .textStyle {font-size: 1em; font-weight:normal}
  .statusSuccess {font-size: 1em; color:blue}
  .statusFailure {font-size: 1em; color:red}
  .informationTableMount {margin-left: 20px}
  
</style>
<script>
$(function() {
    $( "#controls" ).tabs();
  });
  
  
$(function() {
    $( "#accordion" ).accordion({
      heightStyle: "fill"
    });
  });
$(function() {
    $( "#selectable" ).selectable({
      stop: function() {
        var result = $( "#select-result" ).empty();
        $( ".ui-selected", this ).each(function() {
          var index = $( "#selectable li" ).index( this );
          result.append( " #" + ( index + 1 ) );
        });
      }
    });
  });
$(function() {
    $( "#selectablePlanet" ).selectable({
      stop: function() {
        $( ".ui-selected", this ).each(function() {
          var index = $( "#selectablePlanet li" ).index( this );
          alert("Planeta elegido"+index+" "+$( "#selectablePlanet li" ).id);
        });
      }
    });
  });
</script>
<div id="controls">
	<ul>
		<li><a href="#mount_tab"><liferay-ui:message
					key="label-mount-tab" /></a></li>
		<li><a href="#focus_tab"><liferay-ui:message
					key="label-focus-tab" /></a></li>
		<li><a href="#catalog_tab"><liferay-ui:message
					key="label-catalog-tab" /></a></li>
	</ul>

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
									<td><img name="<portlet:namespace />northButton"
										src="<%=request.getContextPath()%>/images/mount/arrow2_up.png"
										onmouseover="document.<portlet:namespace />northButton.src='<%=request.getContextPath()%>/images/mount/arrow2_up_hover.png';"
										onmouseout="document.<portlet:namespace />northButton.src='<%=request.getContextPath()%>/images/mount/arrow2_up.png';"
										onClick="<portlet:namespace />moveMount('north')" />

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
									<td><img name="<portlet:namespace />westButton"
										src="<%=request.getContextPath()%>/images/mount/arrow2_left.png"
										onmouseover="document.<portlet:namespace />westButton.src='<%=request.getContextPath()%>/images/mount/arrow2_left_hover.png';"
										onmouseout="document.<portlet:namespace />westButton.src='<%=request.getContextPath()%>/images/mount/arrow2_left.png';"
										onClick="<portlet:namespace />moveMount('west')" />

									</td>
									<td align="right"></td>
									<td></td>
									<td align="left"></td>
									<td><img name="<portlet:namespace />eastButton"
										src="<%=request.getContextPath()%>/images/mount/arrow2_right.png"
										onmouseover="document.<portlet:namespace />eastButton.src='<%=request.getContextPath()%>/images/mount/arrow2_right_hover.png';"
										onmouseout="document.<portlet:namespace />eastButton.src='<%=request.getContextPath()%>/images/mount/arrow2_right.png';"
										onClick="<portlet:namespace />moveMount('east')" />

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
									<td><img name="<portlet:namespace />southButton"
										src="<%=request.getContextPath()%>/images/mount/arrow2_down.png"
										onmouseover="document.<portlet:namespace />southButton.src='<%=request.getContextPath()%>/images/mount/arrow2_down_hover.png';"
										onmouseout="document.<portlet:namespace />southButton.src='<%=request.getContextPath()%>/images/mount/arrow2_down.png';"
										onClick="<portlet:namespace />moveMount('south')" />

									</td>
									<td></td>
									<td></td>
								</tr>
							</table>
						</div> <!-- Control mount -->
					</td>
					<td>
						<div class="informationTableMount">
						<table>
							<tr>
								<td>
									<span class="labelStyle"><liferay-ui:message key="label-mount-ra" /> :</span>
								</td> 
								<td>
									 <span class="textStyle" id="raCoordControl">14.32445</span>
								</td>
								<td>
									<span class="labelStyle"><liferay-ui:message key="label-mount-dec" /> :</span>
								</td> 
								<td>
									 <span class="textStyle" id="decCoordControl">63.645</span>
								</td>								
							</tr>
							<tr>
								<td>
									<span class="labelStyle"><liferay-ui:message key="label-mount-epoch" /> :</span>
								</td>
								<td colspan="3">
									<span class="statusSuccess">Loading epoch...</span>
								</td>
							</tr>
							<tr>
								<td>
									<span class="labelStyle"><liferay-ui:message key="label-mount-status" /> :</span>
								</td>
								<td colspan="3">
									<span class="statusSuccess">Loading status...</span>
								</td>
							</tr>
						</table>
						</div>
					</td>
				</tr>
			</table>
		</div>
	</div>
	<div id="focus_tab" class="tab-pane">
		<span class="status-span">
			<span class="labelStyle"><liferay-ui:message key="label-focuser-status"/>: </span>
			<span class="statusSuccess">Loading status...</span>
		</span><br>
		<span >
			<input id="moveOut" 
					name="moveOut"  
					type="button" 
					value="<liferay-ui:message key='button-moveOut' />" 
					onClick=""
					/>
			<input 	id="<portlet:namespace />moveIn"
					name="moveOut"  
					type="button" 
					value="<liferay-ui:message key='button-moveIn' />"
					onClick=""
					/>
		</span>
	</div>
	<div id="catalog_tab" class="tab-pane">
		<div id="accordion">
		<h3>Galaxias</h3>
		<div>
			<ol id="selectable">
  				<li class="ui-widget-content">Andrómeda</li>
			</ol>
		</div>
		<h3>Planetas</h3>
		<div>
			<ol id="selectablePlanet">
  				<li class="ui-widget-content" id="mercury">Mercurio</li>
  				<li class="ui-widget-content">Venus</li>
  				<li class="ui-widget-content">Marte</li>
  				<li class="ui-widget-content">Jupiter</li>
  				<li class="ui-widget-content">Saturno</li>
			</ol>
		</div>
		<h3>Cúmulos</h3>
		<div>
			<div>
			</div>
		</div>
		
	</div>
	</div>
</div>