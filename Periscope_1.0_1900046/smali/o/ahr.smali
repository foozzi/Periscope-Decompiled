.class Lo/ahr;
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
.field final synthetic bFk:Lo/ahq;


# direct methods
.method constructor <init>(Lo/ahq;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lo/ahr;->bFk:Lo/ahq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 61
    iget-object v0, p0, Lo/ahr;->bFk:Lo/ahq;

    iget-object v0, v0, Lo/ahq;->bFb:Landroid/view/ViewGroup;

    iget-object v1, p0, Lo/ahr;->bFk:Lo/ahq;

    iget-object v1, v1, Lo/ahq;->ɭ:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 62
    return-void
.end method
