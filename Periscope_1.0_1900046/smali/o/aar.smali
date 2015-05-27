.class Lo/aar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ﾏ$if;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/\uff8f$if<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    }
.end annotation


# instance fields
.field final synthetic buF:Lo/aaq;


# direct methods
.method constructor <init>(Lo/aaq;)V
    .locals 0

    .line 534
    iput-object p1, p0, Lo/aar;->buF:Lo/aaq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ˎ(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;)V"
        }
    .end annotation

    .line 537
    iget-object v0, p0, Lo/aar;->buF:Lo/aaq;

    invoke-static {v0}, Lo/aaq;->ˊ(Lo/aaq;)Lo/aaq$if;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lo/aar;->buF:Lo/aaq;

    invoke-static {v0}, Lo/aaq;->ˊ(Lo/aaq;)Lo/aaq$if;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/aaq$if;->ˏ(Ljava/util/Map;)V

    .line 540
    :cond_0
    return-void
.end method

.method public synthetic ᵣ(Ljava/lang/Object;)V
    .locals 1

    .line 534
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0, v0}, Lo/aar;->ˎ(Ljava/util/Map;)V

    return-void
.end method
