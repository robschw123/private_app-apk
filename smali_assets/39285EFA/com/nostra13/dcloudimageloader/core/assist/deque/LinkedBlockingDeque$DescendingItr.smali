.class Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$DescendingItr;
.super Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DescendingItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque<",
        "TE;>.AbstractItr;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;


# direct methods
.method private constructor <init>(Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$DescendingItr;->this$0:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;

    invoke-direct {p0, p1}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;-><init>(Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$DescendingItr;-><init>(Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;)V

    return-void
.end method


# virtual methods
.method firstNode()Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$DescendingItr;->this$0:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;

    iget-object v0, v0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    return-object v0
.end method

.method nextNode(Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node<",
            "TE;>;)",
            "Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;->prev:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    return-object p1
.end method
