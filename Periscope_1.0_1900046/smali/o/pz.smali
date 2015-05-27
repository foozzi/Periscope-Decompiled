.class Lo/pz;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final Vq:Z

.field public final pX:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lo/pz;->pX:Ljava/lang/String;

    .line 9
    iput-boolean p2, p0, Lo/pz;->Vq:Z

    .line 10
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 14
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 15
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

    .line 17
    :cond_2
    move-object v0, p1

    check-cast v0, Lo/pz;

    move-object v2, v0

    .line 19
    iget-boolean v0, p0, Lo/pz;->Vq:Z

    iget-boolean v1, v2, Lo/pz;->Vq:Z

    if-eq v0, v1, :cond_3

    const/4 v0, 0x0

    return v0

    .line 20
    :cond_3
    iget-object v0, p0, Lo/pz;->pX:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lo/pz;->pX:Ljava/lang/String;

    iget-object v1, v2, Lo/pz;->pX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_4
    iget-object v0, v2, Lo/pz;->pX:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 22
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 24
    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 29
    iget-object v0, p0, Lo/pz;->pX:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/pz;->pX:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 30
    :goto_0
    mul-int/lit8 v0, v2, 0x1f

    iget-boolean v1, p0, Lo/pz;->Vq:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int v2, v0, v1

    .line 31
    return v2
.end method
