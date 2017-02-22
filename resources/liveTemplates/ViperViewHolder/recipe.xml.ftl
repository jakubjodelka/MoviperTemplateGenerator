<?xml version="1.0"?>
<recipe>
	<instantiate from="root/src/app_package/${languageDir}/AggregateItem.${languageExt}.ftl"
             to="${viperOut}/view/adapter/agregate/${aggregateName}Item.${languageExt}" />

    <instantiate from="root/res/layout/vh_layout.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/viewholder_${prefix?lower_case}.xml" />

    <instantiate from="root/src/app_package/${languageDir}/Interactor.${languageExt}.ftl"
                   to="${viperOut}/interactor/${prefix}Interactor.${languageExt}" />

   <instantiate from="root/src/app_package/${languageDir}/Presenter.${languageExt}.ftl"
                   to="${viperOut}/presenter/${prefix}Presenter.${languageExt}" />
   
    <#if createEntity>
        <instantiate from="root/src/app_package/${languageDir}/with_entity/Entity.${languageExt}.ftl"
                           to="${viperOut}/entity/${prefix}.${languageExt}" />

        <instantiate from="root/src/app_package/${languageDir}/with_entity/PrefixedAggregateItem.${languageExt}.ftl"
                           to="${viperOut}/view/adapter/agregate/${prefix}${aggregateName}Item.${languageExt}" />

        <instantiate from="root/src/app_package/${languageDir}/with_entity/ViewHolder.${languageExt}.ftl"
                           to="${viperOut}/view/viewholder/${prefix}ViewHolder.${languageExt}" />
    <#else>
        <instantiate from="root/src/app_package/${languageDir}/PrefixedAggregateItem.${languageExt}.ftl"
                           to="${viperOut}/view/adapter/agregate/${prefix}${aggregateName}Item.${languageExt}" />

        <instantiate from="root/src/app_package/${languageDir}/ViewHolder.${languageExt}.ftl"
                           to="${viperOut}/view/viewholder/${prefix}ViewHolder.${languageExt}" />
    </#if>

    <#if createDelegate>
        <instantiate from="root/src/app_package/${languageDir}/AdapterDelegate.${languageExt}.ftl"
                        to="${viperOut}/view/adapter/delegate/${prefix}AdapterDelegate.${languageExt}" />
    </#if>

    <#if createViewHelper>
        <instantiate from="root/src/app_package/${languageDir}/ViewHelperContract.${languageExt}.ftl"
                        to="${viperOut}/contract/${prefix}Contract.${languageExt}" />

        <instantiate from="root/src/app_package/${languageDir}/ViewHelperRouting.${languageExt}.ftl"
                       to="${viperOut}/routing/${prefix}Routing.${languageExt}" />
    <#else>
        <instantiate from="root/src/app_package/${languageDir}/Contract.${languageExt}.ftl"
                       to="${viperOut}/contract/${prefix}Contract.${languageExt}" />

        <instantiate from="root/src/app_package/${languageDir}/Routing.${languageExt}.ftl"
                       to="${viperOut}/routing/${prefix}Routing.${languageExt}" />
    </#if>

    <open file="${viperOut}/contract/${prefix}Contract.${languageExt}" />
</recipe>
