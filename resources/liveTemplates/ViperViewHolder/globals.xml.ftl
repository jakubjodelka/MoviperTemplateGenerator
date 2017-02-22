<?xml version="1.0"?>
<globals>
    <global
        id="languageDir"
        value="${language}" />
    <global
        id="languageExt"
        value="<#if language?contains("java")>java<#else>kt</#if>" />
    <global
        id="resOut"
        value="${projectOut}/src/main/res/${slashedPackageName(packageName)}" />
    <global
        id="srcOut"
        value="${projectOut}/src/main/${language}/${slashedPackageName(packageName)}" />
    <global
        id="prefix"
        value="${className?replace("ViewHolder", "")}" />
    <global
        id="viperPackage"
        value="${packageName}.viper" />
    <global
        id="appPackage"
        value="${packageName}" />
    <global
        id="viperOut"
        value="${projectOut}/src/main/${language}/${slashedPackageName(packageName)}/viper"
    />
	<global
		id="aggregateName"
		value="${customAggregateType?replace("Item", "")?replace(" ", "")?trim}"/>
</globals>
