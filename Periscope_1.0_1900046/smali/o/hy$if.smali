.class final Lo/hy$if;
.super Lo/gk;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/hy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:Ljava/lang/Object;>Lo/gk<Ljava/util/Collection<TE;>;>;"
    }
.end annotation


# instance fields
.field private final LD:Lo/gk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/gk<TE;>;"
        }
    .end annotation
.end field

.field private final LE:Lo/ho;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ho<+Ljava/util/Collection<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/fl;Ljava/lang/reflect/Type;Lo/gk;Lo/ho;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/fl;Ljava/lang/reflect/Type;Lo/gk<TE;>;Lo/ho<+Ljava/util/Collection<TE;>;>;)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Lo/gk;-><init>()V

    .line 67
    new-instance v0, Lo/iq;

    invoke-direct {v0, p1, p3, p2}, Lo/iq;-><init>(Lo/fl;Lo/gk;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lo/hy$if;->LD:Lo/gk;

    .line 69
    iput-object p4, p0, Lo/hy$if;->LE:Lo/ho;

    .line 70
    return-void
.end method


# virtual methods
.method public ʼ(Lo/jz;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/jz;)Ljava/util/Collection<TE;>;"
        }
    .end annotation

    .line 73
    invoke-virtual {p1}, Lo/jz;->J()Lo/kb;

    move-result-object v0

    sget-object v1, Lo/kb;->NB:Lo/kb;

    if-ne v0, v1, :cond_0

    .line 74
    invoke-virtual {p1}, Lo/jz;->nextNull()V

    .line 75
    const/4 v0, 0x0

    return-object v0

    .line 78
    :cond_0
    iget-object v0, p0, Lo/hy$if;->LE:Lo/ho;

    invoke-interface {v0}, Lo/ho;->C()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    move-object v2, v0

    .line 79
    invoke-virtual {p1}, Lo/jz;->beginArray()V

    .line 80
    :goto_0
    invoke-virtual {p1}, Lo/jz;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lo/hy$if;->LD:Lo/gk;

    invoke-virtual {v0, p1}, Lo/gk;->ˋ(Lo/jz;)Ljava/lang/Object;

    move-result-object v3

    .line 82
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 83
    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {p1}, Lo/jz;->endArray()V

    .line 85
    return-object v2
.end method

.method public bridge synthetic ˊ(Lo/kc;Ljava/lang/Object;)V
    .locals 1

    .line 60
    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, p1, v0}, Lo/hy$if;->ˊ(Lo/kc;Ljava/util/Collection;)V

    return-void
.end method

.method public ˊ(Lo/kc;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/kc;Ljava/util/Collection<TE;>;)V"
        }
    .end annotation

    .line 89
    if-nez p2, :cond_0

    .line 90
    invoke-virtual {p1}, Lo/kc;->T()Lo/kc;

    .line 91
    return-void

    .line 94
    :cond_0
    invoke-virtual {p1}, Lo/kc;->P()Lo/kc;

    .line 95
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 96
    iget-object v0, p0, Lo/hy$if;->LD:Lo/gk;

    invoke-virtual {v0, p1, v2}, Lo/gk;->ˊ(Lo/kc;Ljava/lang/Object;)V

    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {p1}, Lo/kc;->Q()Lo/kc;

    .line 99
    return-void
.end method

.method public synthetic ˋ(Lo/jz;)Ljava/lang/Object;
    .locals 1

    .line 60
    invoke-virtual {p0, p1}, Lo/hy$if;->ʼ(Lo/jz;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
