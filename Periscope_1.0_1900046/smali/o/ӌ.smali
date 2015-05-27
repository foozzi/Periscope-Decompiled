.class Lo/ӌ;
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
.field final synthetic rT:Lo/ҫ;

.field final synthetic rV:Ljava/lang/String;

.field final synthetic rW:J

.field final synthetic rX:J


# direct methods
.method constructor <init>(Lo/ҫ;Ljava/lang/String;JJ)V
    .locals 0

    .line 896
    iput-object p1, p0, Lo/ӌ;->rT:Lo/ҫ;

    iput-object p2, p0, Lo/ӌ;->rV:Ljava/lang/String;

    iput-wide p3, p0, Lo/ӌ;->rW:J

    iput-wide p5, p0, Lo/ӌ;->rX:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 899
    iget-object v0, p0, Lo/ӌ;->rT:Lo/ҫ;

    invoke-static {v0}, Lo/ҫ;->ˊ(Lo/ҫ;)Lo/ҫ$ˊ;

    move-result-object v0

    iget-object v1, p0, Lo/ӌ;->rV:Ljava/lang/String;

    iget-wide v2, p0, Lo/ӌ;->rW:J

    iget-wide v4, p0, Lo/ӌ;->rX:J

    invoke-interface/range {v0 .. v5}, Lo/ҫ$ˊ;->ˋ(Ljava/lang/String;JJ)V

    .line 901
    return-void
.end method
