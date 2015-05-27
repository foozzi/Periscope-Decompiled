.class Lo/aho;
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
.field final synthetic bFe:Lo/ahn;


# direct methods
.method constructor <init>(Lo/ahn;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lo/aho;->bFe:Lo/ahn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 60
    iget-object v0, p0, Lo/aho;->bFe:Lo/ahn;

    iget-object v0, v0, Lo/ahn;->bFb:Landroid/view/ViewGroup;

    iget-object v1, p0, Lo/aho;->bFe:Lo/ahn;

    iget-object v1, v1, Lo/ahn;->bFc:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 61
    return-void
.end method
