.class Lo/ח;
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
.field final synthetic sy:Lo/ԅ;

.field final synthetic sz:Landroid/view/Surface;


# direct methods
.method constructor <init>(Lo/ԅ;Landroid/view/Surface;)V
    .locals 0

    .line 541
    iput-object p1, p0, Lo/ח;->sy:Lo/ԅ;

    iput-object p2, p0, Lo/ח;->sz:Landroid/view/Surface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 544
    iget-object v0, p0, Lo/ח;->sy:Lo/ԅ;

    invoke-static {v0}, Lo/ԅ;->ˊ(Lo/ԅ;)Lo/ԅ$if;

    move-result-object v0

    iget-object v1, p0, Lo/ח;->sz:Landroid/view/Surface;

    invoke-interface {v0, v1}, Lo/ԅ$if;->ˊ(Landroid/view/Surface;)V

    .line 545
    return-void
.end method
