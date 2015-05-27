.class public Lo/nw;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/nw$if;
    }
.end annotation


# instance fields
.field public final RA:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "section"
    .end annotation
.end field

.field public final RB:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "component"
    .end annotation
.end field

.field public final RC:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "element"
    .end annotation
.end field

.field public final RD:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "action"
    .end annotation
.end field

.field public final Ry:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "client"
    .end annotation
.end field

.field public final Rz:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "page"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lo/nw;->Ry:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lo/nw;->Rz:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lo/nw;->RA:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lo/nw;->RB:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lo/nw;->RC:Ljava/lang/String;

    .line 32
    iput-object p6, p0, Lo/nw;->RD:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 49
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 50
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    return v0

    .line 52
    :cond_2
    move-object v0, p1

    check-cast v0, Lo/nw;

    move-object v2, v0

    .line 54
    iget-object v0, p0, Lo/nw;->RD:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/nw;->RD:Ljava/lang/String;

    iget-object v1, v2, Lo/nw;->RD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_3
    iget-object v0, v2, Lo/nw;->RD:Ljava/lang/String;

    if-eqz v0, :cond_4

    :goto_0
    const/4 v0, 0x0

    return v0

    .line 55
    :cond_4
    iget-object v0, p0, Lo/nw;->Ry:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lo/nw;->Ry:Ljava/lang/String;

    iget-object v1, v2, Lo/nw;->Ry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_5
    iget-object v0, v2, Lo/nw;->Ry:Ljava/lang/String;

    if-eqz v0, :cond_6

    :goto_1
    const/4 v0, 0x0

    return v0

    .line 56
    :cond_6
    iget-object v0, p0, Lo/nw;->RB:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lo/nw;->RB:Ljava/lang/String;

    iget-object v1, v2, Lo/nw;->RB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_2

    :cond_7
    iget-object v0, v2, Lo/nw;->RB:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 57
    :goto_2
    const/4 v0, 0x0

    return v0

    .line 59
    :cond_8
    iget-object v0, p0, Lo/nw;->RC:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lo/nw;->RC:Ljava/lang/String;

    iget-object v1, v2, Lo/nw;->RC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_3

    :cond_9
    iget-object v0, v2, Lo/nw;->RC:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 60
    :goto_3
    const/4 v0, 0x0

    return v0

    .line 62
    :cond_a
    iget-object v0, p0, Lo/nw;->Rz:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lo/nw;->Rz:Ljava/lang/String;

    iget-object v1, v2, Lo/nw;->Rz:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_4

    :cond_b
    iget-object v0, v2, Lo/nw;->Rz:Ljava/lang/String;

    if-eqz v0, :cond_c

    :goto_4
    const/4 v0, 0x0

    return v0

    .line 63
    :cond_c
    iget-object v0, p0, Lo/nw;->RA:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lo/nw;->RA:Ljava/lang/String;

    iget-object v1, v2, Lo/nw;->RA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_5

    :cond_d
    iget-object v0, v2, Lo/nw;->RA:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 64
    :goto_5
    const/4 v0, 0x0

    return v0

    .line 67
    :cond_e
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 72
    iget-object v0, p0, Lo/nw;->Ry:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/nw;->Ry:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 73
    :goto_0
    mul-int/lit8 v0, v2, 0x1f

    iget-object v1, p0, Lo/nw;->Rz:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/nw;->Rz:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int v2, v0, v1

    .line 74
    mul-int/lit8 v0, v2, 0x1f

    iget-object v1, p0, Lo/nw;->RA:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo/nw;->RA:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int v2, v0, v1

    .line 75
    mul-int/lit8 v0, v2, 0x1f

    iget-object v1, p0, Lo/nw;->RB:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lo/nw;->RB:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int v2, v0, v1

    .line 76
    mul-int/lit8 v0, v2, 0x1f

    iget-object v1, p0, Lo/nw;->RC:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lo/nw;->RC:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int v2, v0, v1

    .line 77
    mul-int/lit8 v0, v2, 0x1f

    iget-object v1, p0, Lo/nw;->RD:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lo/nw;->RD:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    add-int v2, v0, v1

    .line 78
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "client="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/nw;->Ry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/nw;->Rz:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", section="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/nw;->RA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", component="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/nw;->RB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", element="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/nw;->RC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/nw;->RD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
