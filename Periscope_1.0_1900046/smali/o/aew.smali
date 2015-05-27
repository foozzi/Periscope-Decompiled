.class Lo/aew;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bBV:Lo/aet;


# direct methods
.method constructor <init>(Lo/aet;)V
    .locals 0

    .line 615
    iput-object p1, p0, Lo/aew;->bBV:Lo/aet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 618
    iget-object v0, p0, Lo/aew;->bBV:Lo/aet;

    iget-object v1, p0, Lo/aew;->bBV:Lo/aet;

    invoke-static {v1}, Lo/aet;->ˏ(Lo/aet;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lo/aet;->ˊ(Lo/aet;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 619
    return-void
.end method
