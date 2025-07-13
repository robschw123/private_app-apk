.class Lcom/taobao/weex/ui/component/binding/AsynLayoutTask;
.super Landroid/os/AsyncTask;
.source "AsynLayoutTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final component:Lcom/taobao/weex/ui/component/WXComponent;

.field private final position:I

.field private final templateViewHolder:Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;ILcom/taobao/weex/ui/component/WXComponent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "templateViewHolder",
            "position",
            "component"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/taobao/weex/ui/component/binding/AsynLayoutTask;->templateViewHolder:Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    .line 39
    iput p2, p0, Lcom/taobao/weex/ui/component/binding/AsynLayoutTask;->position:I

    .line 40
    iput-object p3, p0, Lcom/taobao/weex/ui/component/binding/AsynLayoutTask;->component:Lcom/taobao/weex/ui/component/WXComponent;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "params"
        }
    .end annotation

    .line 31
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/binding/AsynLayoutTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 45
    iget-object p1, p0, Lcom/taobao/weex/ui/component/binding/AsynLayoutTask;->templateViewHolder:Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getHolderPosition()I

    move-result p1

    iget v0, p0, Lcom/taobao/weex/ui/component/binding/AsynLayoutTask;->position:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 46
    iget-object p1, p0, Lcom/taobao/weex/ui/component/binding/AsynLayoutTask;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/taobao/weex/ui/component/binding/AsynLayoutTask;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->isDestroy()Z

    move-result p1

    if-nez p1, :cond_1

    .line 47
    iget-object p1, p0, Lcom/taobao/weex/ui/component/binding/AsynLayoutTask;->templateViewHolder:Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getTemplateList()Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    move-result-object p1

    monitor-enter p1

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/binding/AsynLayoutTask;->templateViewHolder:Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getTemplateList()Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->isDestoryed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    monitor-exit p1

    return-object v1

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/binding/AsynLayoutTask;->component:Lcom/taobao/weex/ui/component/WXComponent;

    iget-object v2, p0, Lcom/taobao/weex/ui/component/binding/AsynLayoutTask;->templateViewHolder:Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    invoke-static {v0, v2}, Lcom/taobao/weex/ui/component/binding/Layouts;->doLayoutOnly(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;)V

    .line 52
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "aVoid"
        }
    .end annotation

    .line 31
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/binding/AsynLayoutTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aVoid"
        }
    .end annotation

    .line 60
    iget p1, p0, Lcom/taobao/weex/ui/component/binding/AsynLayoutTask;->position:I

    iget-object v0, p0, Lcom/taobao/weex/ui/component/binding/AsynLayoutTask;->templateViewHolder:Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getHolderPosition()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 61
    iget-object p1, p0, Lcom/taobao/weex/ui/component/binding/AsynLayoutTask;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/taobao/weex/ui/component/binding/AsynLayoutTask;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->isDestroy()Z

    move-result p1

    if-nez p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/taobao/weex/ui/component/binding/AsynLayoutTask;->component:Lcom/taobao/weex/ui/component/WXComponent;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/taobao/weex/ui/component/binding/Layouts;->setLayout(Lcom/taobao/weex/ui/component/WXComponent;Z)V

    .line 63
    iget-object p1, p0, Lcom/taobao/weex/ui/component/binding/AsynLayoutTask;->templateViewHolder:Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getHolderPosition()I

    move-result p1

    if-ltz p1, :cond_0

    .line 64
    iget-object p1, p0, Lcom/taobao/weex/ui/component/binding/AsynLayoutTask;->templateViewHolder:Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getTemplateList()Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    move-result-object p1

    iget-object v0, p0, Lcom/taobao/weex/ui/component/binding/AsynLayoutTask;->templateViewHolder:Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getTemplateList()Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getRef()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/taobao/weex/ui/component/binding/AsynLayoutTask;->position:I

    iget-object v2, p0, Lcom/taobao/weex/ui/component/binding/AsynLayoutTask;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {v0, v1, v2}, Lcom/taobao/weex/ui/component/list/template/TemplateDom;->findAllComponentRefs(Ljava/lang/String;ILcom/taobao/weex/ui/component/WXComponent;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "_attach_slot"

    invoke-virtual {p1, v1, v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
