.class Lcom/dcloud/android/widget/AbsoluteLayout$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dcloud/android/widget/AbsoluteLayout;->runDrawRectF(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;IIIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dcloud/android/widget/AbsoluteLayout;

.field final synthetic val$callId:Ljava/lang/String;

.field final synthetic val$frames:I

.field final synthetic val$index:I

.field final synthetic val$itemOffset:I

.field final synthetic val$itemTime:I

.field final synthetic val$pWebViewImpl:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic val$regionBottom:I

.field final synthetic val$regionLeft:I

.field final synthetic val$regionRight:I

.field final synthetic val$regionTop:I

.field final synthetic val$surplus:I


# direct methods
.method constructor <init>(Lcom/dcloud/android/widget/AbsoluteLayout;IILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;IIIIIII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/widget/AbsoluteLayout$2;->this$0:Lcom/dcloud/android/widget/AbsoluteLayout;

    iput p2, p0, Lcom/dcloud/android/widget/AbsoluteLayout$2;->val$index:I

    iput p3, p0, Lcom/dcloud/android/widget/AbsoluteLayout$2;->val$frames:I

    iput-object p4, p0, Lcom/dcloud/android/widget/AbsoluteLayout$2;->val$pWebViewImpl:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p5, p0, Lcom/dcloud/android/widget/AbsoluteLayout$2;->val$callId:Ljava/lang/String;

    iput p6, p0, Lcom/dcloud/android/widget/AbsoluteLayout$2;->val$regionLeft:I

    iput p7, p0, Lcom/dcloud/android/widget/AbsoluteLayout$2;->val$regionRight:I

    iput p8, p0, Lcom/dcloud/android/widget/AbsoluteLayout$2;->val$regionTop:I

    iput p9, p0, Lcom/dcloud/android/widget/AbsoluteLayout$2;->val$regionBottom:I

    iput p10, p0, Lcom/dcloud/android/widget/AbsoluteLayout$2;->val$itemTime:I

    iput p11, p0, Lcom/dcloud/android/widget/AbsoluteLayout$2;->val$itemOffset:I

    iput p12, p0, Lcom/dcloud/android/widget/AbsoluteLayout$2;->val$surplus:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/widget/AbsoluteLayout$2;->this$0:Lcom/dcloud/android/widget/AbsoluteLayout;

    invoke-virtual {v0}, Landroid/widget/AbsoluteLayout;->invalidate()V

    .line 2
    iget v0, p0, Lcom/dcloud/android/widget/AbsoluteLayout$2;->val$index:I

    iget v10, p0, Lcom/dcloud/android/widget/AbsoluteLayout$2;->val$frames:I

    if-ne v0, v10, :cond_0

    .line 3
    iget-object v0, p0, Lcom/dcloud/android/widget/AbsoluteLayout$2;->this$0:Lcom/dcloud/android/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/dcloud/android/widget/AbsoluteLayout$2;->val$pWebViewImpl:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p0, Lcom/dcloud/android/widget/AbsoluteLayout$2;->val$callId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/dcloud/android/widget/AbsoluteLayout;->access$000(Lcom/dcloud/android/widget/AbsoluteLayout;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/dcloud/android/widget/AbsoluteLayout$2;->this$0:Lcom/dcloud/android/widget/AbsoluteLayout;

    iget-object v2, p0, Lcom/dcloud/android/widget/AbsoluteLayout$2;->val$pWebViewImpl:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v3, p0, Lcom/dcloud/android/widget/AbsoluteLayout$2;->val$callId:Ljava/lang/String;

    iget v4, p0, Lcom/dcloud/android/widget/AbsoluteLayout$2;->val$regionLeft:I

    iget v5, p0, Lcom/dcloud/android/widget/AbsoluteLayout$2;->val$regionRight:I

    iget v6, p0, Lcom/dcloud/android/widget/AbsoluteLayout$2;->val$regionTop:I

    iget v7, p0, Lcom/dcloud/android/widget/AbsoluteLayout$2;->val$regionBottom:I

    iget v8, p0, Lcom/dcloud/android/widget/AbsoluteLayout$2;->val$itemTime:I

    iget v9, p0, Lcom/dcloud/android/widget/AbsoluteLayout$2;->val$itemOffset:I

    iget v11, p0, Lcom/dcloud/android/widget/AbsoluteLayout$2;->val$surplus:I

    add-int/lit8 v12, v0, 0x1

    invoke-static/range {v1 .. v12}, Lcom/dcloud/android/widget/AbsoluteLayout;->access$100(Lcom/dcloud/android/widget/AbsoluteLayout;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;IIIIIIIII)V

    return-void
.end method
