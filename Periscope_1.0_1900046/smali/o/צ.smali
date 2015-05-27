.class Lo/צ;
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
.field final synthetic sA:I

.field final synthetic sB:J

.field final synthetic sy:Lo/ԅ;


# direct methods
.method constructor <init>(Lo/ԅ;IJ)V
    .locals 0

    .line 559
    iput-object p1, p0, Lo/צ;->sy:Lo/ԅ;

    iput p2, p0, Lo/צ;->sA:I

    iput-wide p3, p0, Lo/צ;->sB:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 562
    iget-object v0, p0, Lo/צ;->sy:Lo/ԅ;

    invoke-static {v0}, Lo/ԅ;->ˊ(Lo/ԅ;)Lo/ԅ$if;

    move-result-object v0

    iget v1, p0, Lo/צ;->sA:I

    iget-wide v2, p0, Lo/צ;->sB:J

    invoke-interface {v0, v1, v2, v3}, Lo/ԅ$if;->ˎ(IJ)V

    .line 563
    return-void
.end method
