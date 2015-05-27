.class Lo/ь;
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
.field final synthetic rn:Lo/з;

.field final synthetic ro:Lo/ۊ$ˎ;


# direct methods
.method constructor <init>(Lo/з;Lo/ۊ$ˎ;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lo/ь;->rn:Lo/з;

    iput-object p2, p0, Lo/ь;->ro:Lo/ۊ$ˎ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 331
    iget-object v0, p0, Lo/ь;->rn:Lo/з;

    invoke-static {v0}, Lo/з;->ˊ(Lo/з;)Lo/з$if;

    move-result-object v0

    iget-object v1, p0, Lo/ь;->ro:Lo/ۊ$ˎ;

    invoke-interface {v0, v1}, Lo/з$if;->ˋ(Lo/ۊ$ˎ;)V

    .line 332
    return-void
.end method
