.class Lo/ﺏ;
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
.field final synthetic zd:Lo/忄;

.field final synthetic ze:J


# direct methods
.method constructor <init>(Lo/忄;J)V
    .locals 0

    .line 565
    iput-object p1, p0, Lo/ﺏ;->zd:Lo/忄;

    iput-wide p2, p0, Lo/ﺏ;->ze:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 568
    iget-object v0, p0, Lo/ﺏ;->zd:Lo/忄;

    invoke-static {v0}, Lo/忄;->ˋ(Lo/忄;)Lo/忄$if;

    move-result-object v0

    iget-object v1, p0, Lo/ﺏ;->zd:Lo/忄;

    invoke-static {v1}, Lo/忄;->ˊ(Lo/忄;)I

    move-result v1

    iget-wide v2, p0, Lo/ﺏ;->ze:J

    invoke-interface {v0, v1, v2, v3}, Lo/忄$if;->ᐝ(IJ)V

    .line 569
    return-void
.end method
