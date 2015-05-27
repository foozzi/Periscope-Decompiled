.class Lo/hm;
.super Lo/hk$ˋ;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/hk<TK;TV;>.\u02cb<Ljava/util/Map$Entry<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic Lj:Lo/hk$if;


# direct methods
.method constructor <init>(Lo/hk$if;)V
    .locals 2

    .line 563
    iput-object p1, p0, Lo/hm;->Lj:Lo/hk$if;

    iget-object v0, p1, Lo/hk$if;->Li:Lo/hk;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lo/hk$ˋ;-><init>(Lo/hk;Lo/hl;)V

    return-void
.end method


# virtual methods
.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .line 563
    invoke-virtual {p0}, Lo/hm;->ᐣ()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public ᐣ()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/Map$Entry<TK;TV;>;"
        }
    .end annotation

    .line 565
    invoke-virtual {p0}, Lo/hm;->E()Lo/hk$ˎ;

    move-result-object v0

    return-object v0
.end method
