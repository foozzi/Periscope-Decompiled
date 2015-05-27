.class Lo/ڐ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ﮆ;


# instance fields
.field private final ec:Lo/ﮆ;

.field private final id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/ﮆ;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lo/ڐ;->id:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lo/ڐ;->ec:Lo/ﮆ;

    .line 19
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 23
    if-ne p0, p1, :cond_0

    .line 24
    const/4 v0, 0x1

    return v0

    .line 26
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 27
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 30
    :cond_2
    move-object v0, p1

    check-cast v0, Lo/ڐ;

    move-object v2, v0

    .line 32
    iget-object v0, p0, Lo/ڐ;->id:Ljava/lang/String;

    iget-object v1, v2, Lo/ڐ;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 33
    const/4 v0, 0x0

    return v0

    .line 35
    :cond_3
    iget-object v0, p0, Lo/ڐ;->ec:Lo/ﮆ;

    iget-object v1, v2, Lo/ڐ;->ec:Lo/ﮆ;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 36
    const/4 v0, 0x0

    return v0

    .line 39
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 44
    iget-object v0, p0, Lo/ڐ;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 45
    mul-int/lit8 v0, v2, 0x1f

    iget-object v1, p0, Lo/ڐ;->ec:Lo/ﮆ;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int v2, v0, v1

    .line 46
    return v2
.end method

.method public ˊ(Ljava/security/MessageDigest;)V
    .locals 2

    .line 51
    iget-object v0, p0, Lo/ڐ;->id:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 52
    iget-object v0, p0, Lo/ڐ;->ec:Lo/ﮆ;

    invoke-interface {v0, p1}, Lo/ﮆ;->ˊ(Ljava/security/MessageDigest;)V

    .line 53
    return-void
.end method
