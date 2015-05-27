.class public Lo/mr;
.super Lo/mg;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/mr$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/mg<Lcom/twitter/sdk/android/core/TwitterAuthToken;>;"
    }
.end annotation


# instance fields
.field private final nF:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "user_name"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/TwitterAuthToken;JLjava/lang/String;)V
    .locals 2

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lo/mg;-><init>(Lo/lw;J)V

    .line 34
    if-nez p1, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AuthToken must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    iput-object p4, p0, Lo/mr;->nF:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public bk()J
    .locals 2

    .line 42
    invoke-virtual {p0}, Lo/mr;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 51
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 52
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

    .line 53
    :cond_2
    invoke-super {p0, p1}, Lo/mg;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    return v0

    .line 55
    :cond_3
    move-object v0, p1

    check-cast v0, Lo/mr;

    move-object v2, v0

    .line 57
    iget-object v0, p0, Lo/mr;->nF:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lo/mr;->nF:Ljava/lang/String;

    iget-object v1, v2, Lo/mr;->nF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_4
    iget-object v0, v2, Lo/mr;->nF:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 58
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 60
    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lo/mr;->nF:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 65
    invoke-super {p0}, Lo/mg;->hashCode()I

    move-result v2

    .line 66
    mul-int/lit8 v0, v2, 0x1f

    iget-object v1, p0, Lo/mr;->nF:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/mr;->nF:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int v2, v0, v1

    .line 67
    return v2
.end method
