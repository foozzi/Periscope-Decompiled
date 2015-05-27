.class Lo/ҷ;
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
.field final synthetic rS:Lo/ҫ$if;

.field final synthetic rT:Lo/ҫ;


# direct methods
.method constructor <init>(Lo/ҫ;Lo/ҫ$if;)V
    .locals 0

    .line 873
    iput-object p1, p0, Lo/ҷ;->rT:Lo/ҫ;

    iput-object p2, p0, Lo/ҷ;->rS:Lo/ҫ$if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 876
    iget-object v0, p0, Lo/ҷ;->rT:Lo/ҫ;

    invoke-static {v0}, Lo/ҫ;->ˊ(Lo/ҫ;)Lo/ҫ$ˊ;

    move-result-object v0

    iget-object v1, p0, Lo/ҷ;->rS:Lo/ҫ$if;

    invoke-interface {v0, v1}, Lo/ҫ$ˊ;->ˎ(Lo/ҫ$if;)V

    .line 877
    return-void
.end method
