.class Lo/hn;
.super Lo/hk$ˋ;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/hk<TK;TV;>.\u02cb<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic Lk:Lo/hk$ˊ;


# direct methods
.method constructor <init>(Lo/hk$ˊ;)V
    .locals 2

    .line 598
    iput-object p1, p0, Lo/hn;->Lk:Lo/hk$ˊ;

    iget-object v0, p1, Lo/hk$ˊ;->Li:Lo/hk;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lo/hk$ˋ;-><init>(Lo/hk;Lo/hl;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 600
    invoke-virtual {p0}, Lo/hn;->E()Lo/hk$ˎ;

    move-result-object v0

    iget-object v0, v0, Lo/hk$ˎ;->it:Ljava/lang/Object;

    return-object v0
.end method
