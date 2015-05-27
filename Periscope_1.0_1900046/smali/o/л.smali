.class Lo/л;
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
.field final synthetic rm:Lo/ۊ$ˋ;

.field final synthetic rn:Lo/з;


# direct methods
.method constructor <init>(Lo/з;Lo/ۊ$ˋ;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lo/л;->rn:Lo/з;

    iput-object p2, p0, Lo/л;->rm:Lo/ۊ$ˋ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 320
    iget-object v0, p0, Lo/л;->rn:Lo/з;

    invoke-static {v0}, Lo/з;->ˊ(Lo/з;)Lo/з$if;

    move-result-object v0

    iget-object v1, p0, Lo/л;->rm:Lo/ۊ$ˋ;

    invoke-interface {v0, v1}, Lo/з$if;->ˋ(Lo/ۊ$ˋ;)V

    .line 321
    return-void
.end method
