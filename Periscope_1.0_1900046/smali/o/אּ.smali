.class Lo/אּ;
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
.field final synthetic yX:J

.field final synthetic yY:I

.field final synthetic yZ:I

.field final synthetic za:Lo/ব;

.field final synthetic zb:J

.field final synthetic zc:J

.field final synthetic zd:Lo/忄;


# direct methods
.method constructor <init>(Lo/忄;JIILo/ব;JJ)V
    .locals 0

    .line 539
    iput-object p1, p0, Lo/אּ;->zd:Lo/忄;

    iput-wide p2, p0, Lo/אּ;->yX:J

    iput p4, p0, Lo/אּ;->yY:I

    iput p5, p0, Lo/אּ;->yZ:I

    iput-object p6, p0, Lo/אּ;->za:Lo/ব;

    iput-wide p7, p0, Lo/אּ;->zb:J

    iput-wide p9, p0, Lo/אּ;->zc:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 542
    iget-object v0, p0, Lo/אּ;->zd:Lo/忄;

    invoke-static {v0}, Lo/忄;->ˋ(Lo/忄;)Lo/忄$if;

    move-result-object v0

    iget-object v1, p0, Lo/אּ;->zd:Lo/忄;

    invoke-static {v1}, Lo/忄;->ˊ(Lo/忄;)I

    move-result v1

    iget-wide v2, p0, Lo/אּ;->yX:J

    iget v4, p0, Lo/אּ;->yY:I

    iget v5, p0, Lo/אּ;->yZ:I

    iget-object v6, p0, Lo/אּ;->za:Lo/ব;

    iget-object v7, p0, Lo/אּ;->zd:Lo/忄;

    iget-wide v8, p0, Lo/אּ;->zb:J

    invoke-virtual {v7, v8, v9}, Lo/忄;->ˇ(J)I

    move-result v7

    iget-object v8, p0, Lo/אּ;->zd:Lo/忄;

    iget-wide v9, p0, Lo/אּ;->zc:J

    invoke-virtual {v8, v9, v10}, Lo/忄;->ˇ(J)I

    move-result v8

    invoke-interface/range {v0 .. v8}, Lo/忄$if;->ˊ(IJIILo/ব;II)V

    .line 544
    return-void
.end method
