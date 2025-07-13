.class public interface abstract Lcom/taobao/weex/bridge/WXValidateProcessor;
.super Ljava/lang/Object;
.source "WXValidateProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/bridge/WXValidateProcessor$WXModuleValidateResult;,
        Lcom/taobao/weex/bridge/WXValidateProcessor$WXComponentValidateResult;
    }
.end annotation


# virtual methods
.method public abstract needValidate(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundleUrl"
        }
    .end annotation
.end method

.method public abstract onComponentValidate(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/bridge/WXValidateProcessor$WXComponentValidateResult;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "wxsdkInstance",
            "componentName",
            "parentComponent"
        }
    .end annotation
.end method

.method public abstract onModuleValidate(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/alibaba/fastjson/JSONObject;)Lcom/taobao/weex/bridge/WXValidateProcessor$WXModuleValidateResult;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "wxsdkInstance",
            "moduleStr",
            "methodStr",
            "params",
            "options"
        }
    .end annotation
.end method
