.class Lo/ւ;
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
.field final synthetic sv:I

.field final synthetic sw:I

.field final synthetic sx:F

.field final synthetic sy:Lo/ԅ;


# direct methods
.method constructor <init>(Lo/ԅ;IIF)V
    .locals 0

    .line 523
    iput-object p1, p0, Lo/ւ;->sy:Lo/ԅ;

    iput p2, p0, Lo/ւ;->sv:I

    iput p3, p0, Lo/ւ;->sw:I

    iput p4, p0, Lo/ւ;->sx:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 526
    iget-object v0, p0, Lo/ւ;->sy:Lo/ԅ;

    invoke-static {v0}, Lo/ԅ;->ˊ(Lo/ԅ;)Lo/ԅ$if;

    move-result-object v0

    iget v1, p0, Lo/ւ;->sv:I

    iget v2, p0, Lo/ւ;->sw:I

    iget v3, p0, Lo/ւ;->sx:F

    invoke-interface {v0, v1, v2, v3}, Lo/ԅ$if;->ˊ(IIF)V

    .line 527
    return-void
.end method
