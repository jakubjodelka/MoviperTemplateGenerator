<#if applicationPackage??>
package ${viperPackage}.routing;
</#if>

import android.support.annotation.NonNull;
import android.support.v4.app.Fragment;

import com.mateuszkoslacz.moviper.base.routing.FragmentBaseViewHelperRouting;
<#if applicationPackage??>
import ${applicationPackage}.viper.contract.${prefix}Contract;
</#if>

public class ${prefix}Routing
        extends FragmentBaseViewHelperRouting<
        ${prefix}Contract.PresenterForRouting,
        ${prefix}Contract.ViewHelper>
        implements ${prefix}Contract.Routing {

    public ${prefix}Routing(@NonNull Fragment fragment) {
        super(fragment);
    }
}
