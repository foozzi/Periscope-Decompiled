.class public Lo/ﾄ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private ni:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<*>;"
        }
    .end annotation
.end field

.field private nj:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/Class<*>;Ljava/lang/Class<*>;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p0, p1, p2}, Lo/ﾄ;->ͺ(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 16
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 33
    if-ne p0, p1, :cond_0

    .line 34
    const/4 v0, 0x1

    return v0

    .line 36
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 37
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 40
    :cond_2
    move-object v0, p1

    check-cast v0, Lo/ﾄ;

    move-object v2, v0

    .line 42
    iget-object v0, p0, Lo/ﾄ;->ni:Ljava/lang/Class;

    iget-object v1, v2, Lo/ﾄ;->ni:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 43
    const/4 v0, 0x0

    return v0

    .line 45
    :cond_3
    iget-object v0, p0, Lo/ﾄ;->nj:Ljava/lang/Class;

    iget-object v1, v2, Lo/ﾄ;->nj:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 46
    const/4 v0, 0x0

    return v0

    .line 49
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 54
    iget-object v0, p0, Lo/ﾄ;->ni:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 55
    mul-int/lit8 v0, v2, 0x1f

    iget-object v1, p0, Lo/ﾄ;->nj:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int v2, v0, v1

    .line 56
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultiClassKey{first="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/ﾄ;->ni:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", second="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/ﾄ;->nj:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ͺ(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/Class<*>;Ljava/lang/Class<*>;)V"
        }
    .end annotation

    .line 19
    iput-object p1, p0, Lo/ﾄ;->ni:Ljava/lang/Class;

    .line 20
    iput-object p2, p0, Lo/ﾄ;->nj:Ljava/lang/Class;

    .line 21
    return-void
.end method
