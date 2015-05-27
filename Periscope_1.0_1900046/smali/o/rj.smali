.class Lo/rj;
.super Lo/rl;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/rl<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic Xl:Lo/ri$if;


# direct methods
.method constructor <init>(Lo/ri$if;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lo/rj;->Xl:Lo/ri$if;

    invoke-direct {p0, p2, p3}, Lo/rl;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public cW()Lo/re;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::Lo/re<Lo/rp;>;:Lo/rm;:Lo/rp;>()TT;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lo/rj;->Xl:Lo/ri$if;

    invoke-static {v0}, Lo/ri$if;->ˊ(Lo/ri$if;)Lo/ri;

    move-result-object v0

    return-object v0
.end method
