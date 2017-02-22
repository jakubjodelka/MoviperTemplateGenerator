package ${viperPackage}.view.viewstate; 
 
import android.os.Bundle
import android.support.annotation.NonNull
 
import com.hannesdorfmann.mosby.mvp.viewstate.RestorableViewState
import ${viperPackage}.contract.${prefix}Contract
 
class ${prefix}ViewState : RestorableViewState<${prefix}Contract.View>, ${prefix}Contract.View.State {
 
    private var mState : Int = 0
 
    override fun void saveInstanceState(outInstanceState: Bundle) {
 
    }
 
    override fun restoreInstanceState(inInstanceState: Bundle?) : RestorableViewState<${prefix}Contract.View>? {
        if (inInstanceState == null) return null;
 
        return this
    }
 
    override fun apply(view: ${prefix}Contract.View, retained: Boolean) {
        if (retained) { 
            when (mState) {

            } 
        } 
    } 
 
    override fun setState(state: Int) {
        mState = state
    } 
}
