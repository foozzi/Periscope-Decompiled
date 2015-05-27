.class Lo/ｪ$ˎ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ﮆ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ｪ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "\u02ce"
.end annotation


# instance fields
.field private final uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 192
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/ｪ$ˎ;-><init>(Ljava/util/UUID;)V

    .line 193
    return-void
.end method

.method constructor <init>(Ljava/util/UUID;)V
    .locals 0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-object p1, p0, Lo/ｪ$ˎ;->uuid:Ljava/util/UUID;

    .line 198
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 202
    instance-of v0, p1, Lo/ｪ$ˎ;

    if-eqz v0, :cond_0

    .line 203
    move-object v0, p1

    check-cast v0, Lo/ｪ$ˎ;

    move-object v2, v0

    .line 204
    iget-object v0, v2, Lo/ｪ$ˎ;->uuid:Ljava/util/UUID;

    iget-object v1, p0, Lo/ｪ$ˎ;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 206
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 211
    iget-object v0, p0, Lo/ｪ$ˎ;->uuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    return v0
.end method

.method public ˊ(Ljava/security/MessageDigest;)V
    .locals 2

    .line 216
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
