.class Lo/fl$if;
.super Lo/gk;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/fl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:Ljava/lang/Object;>Lo/gk<TT;>;"
    }
.end annotation


# instance fields
.field private Kh:Lo/gk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/gk<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 878
    invoke-direct {p0}, Lo/gk;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Lo/gk;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/gk<TT;>;)V"
        }
    .end annotation

    .line 882
    iget-object v0, p0, Lo/fl$if;->Kh:Lo/gk;

    if-eqz v0, :cond_0

    .line 883
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 885
    :cond_0
    iput-object p1, p0, Lo/fl$if;->Kh:Lo/gk;

    .line 886
    return-void
.end method

.method public ˊ(Lo/kc;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/kc;TT;)V"
        }
    .end annotation

    .line 896
    iget-object v0, p0, Lo/fl$if;->Kh:Lo/gk;

    if-nez v0, :cond_0

    .line 897
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 899
    :cond_0
    iget-object v0, p0, Lo/fl$if;->Kh:Lo/gk;

    invoke-virtual {v0, p1, p2}, Lo/gk;->ˊ(Lo/kc;Ljava/lang/Object;)V

    .line 900
    return-void
.end method

.method public ˋ(Lo/jz;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/jz;)TT;"
        }
    .end annotation

    .line 889
    iget-object v0, p0, Lo/fl$if;->Kh:Lo/gk;

    if-nez v0, :cond_0

    .line 890
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 892
    :cond_0
    iget-object v0, p0, Lo/fl$if;->Kh:Lo/gk;

    invoke-virtual {v0, p1}, Lo/gk;->ˋ(Lo/jz;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
