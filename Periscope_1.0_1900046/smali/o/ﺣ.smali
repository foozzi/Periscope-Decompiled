.class Lo/ﺣ;
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
.field final synthetic yZ:I

.field final synthetic za:Lo/ব;

.field final synthetic zd:Lo/忄;

.field final synthetic zi:J


# direct methods
.method constructor <init>(Lo/忄;Lo/ব;IJ)V
    .locals 0

    .line 588
    iput-object p1, p0, Lo/ﺣ;->zd:Lo/忄;

    iput-object p2, p0, Lo/ﺣ;->za:Lo/ব;

    iput p3, p0, Lo/ﺣ;->yZ:I

    iput-wide p4, p0, Lo/ﺣ;->zi:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 591
    iget-object v0, p0, Lo/ﺣ;->zd:Lo/忄;

    invoke-static {v0}, Lo/忄;->ˋ(Lo/忄;)Lo/忄$if;

    move-result-object v0

    iget-object v1, p0, Lo/ﺣ;->zd:Lo/忄;

    invoke-static {v1}, Lo/忄;->ˊ(Lo/忄;)I

    move-result v1

    iget-object v2, p0, Lo/ﺣ;->za:Lo/ব;

    iget v3, p0, Lo/ﺣ;->yZ:I

    iget-object v4, p0, Lo/ﺣ;->zd:Lo/忄;

    iget-wide v5, p0, Lo/ﺣ;->zi:J

    invoke-virtual {v4, v5, v6}, Lo/忄;->ˇ(J)I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lo/忄$if;->ˊ(ILo/ব;II)V

    .line 593
    return-void
.end method
