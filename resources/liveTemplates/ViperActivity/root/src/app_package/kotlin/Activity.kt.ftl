package ${viperPackage}.view.activity

import android.os.Bundle
import android.support.annotation.NonNull
<#if viewState>
import com.hannesdorfmann.mosby.mvp.viewstate.ViewState</#if>
import ${appPackage}.R
import ${viperPackage}.contract.${prefix}Contract
import ${viperPackage}.presenter.${prefix}Presenter
import com.mateuszkoslacz.moviper.base.view.activity.Viper<#if viewState>ViewState</#if>Activity<#if viewState>
import ${viperPackage}.view.viewstate.${prefix}ViewState</#if>

class ${prefix}Activity :
        Viper<#if viewState>ViewState</#if>Activity
        <${prefix}Contract.View, 
                ${prefix}Contract.Presenter<#if viewState>,
                ${prefix}ViewState</#if>>(),
        ${prefix}Contract.View<#if createViewHelper>,
        ${prefix}Contract.ViewHelper</#if> {

    override protected fun onCreate(savedInstanceState: Bundle) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_${classToResource(className)})
    }

    override ${prefix}Contract.Presenter createPresenter() {
        return ${prefix}Presenter()
    }

    <#if viewState> 
    override createViewState(): ViewState<${prefix}Contract.View>  {
        return ${prefix}ViewState()
    }   
   
    override fun onNewViewStateInstance() {
           
    }</#if>  
}
