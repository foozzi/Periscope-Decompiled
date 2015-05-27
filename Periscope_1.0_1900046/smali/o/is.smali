.class final Lo/is;
.super Lo/gk;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/gk<Ljava/lang/Class;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Lo/gk;-><init>()V

    return-void
.end method


# virtual methods
.method public ʿ(Lo/jz;)Ljava/lang/Class;
    .locals 2

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

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ˊ(Lo/kc;Ljava/lang/Class;)V
    .locals 3

    .line 64
    if-nez p2, :cond_0

    .line 65
    invoke-virtual {p1}, Lo/kc;->T()Lo/kc;

    goto :goto_0

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to serialize java.lang.Class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Forgot to register a type adapter?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :goto_0
    return-void
.end method

.method public bridge synthetic ˊ(Lo/kc;Ljava/lang/Object;)V
    .locals 1

    .line 61
    move-object v0, p2

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Lo/is;->ˊ(Lo/kc;Ljava/lang/Class;)V

    return-void
.end method

.method public synthetic ˋ(Lo/jz;)Ljava/lang/Object;
    .locals 1

    .line 61
    invoke-virtual {p0, p1}, Lo/is;->ʿ(Lo/jz;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
