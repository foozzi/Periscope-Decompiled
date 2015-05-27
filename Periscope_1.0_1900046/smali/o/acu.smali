.class public Lo/acu;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final bxY:Ljava/security/PublicKey;

.field private final bxZ:Ljava/lang/String;

.field private final bya:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lo/acu;->bxY:Ljava/security/PublicKey;

    .line 24
    iput-object p2, p0, Lo/acu;->bxZ:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lo/acu;->bya:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>(Lo/acs;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 19
    invoke-interface {p1}, Lo/acs;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lo/acu;-><init>(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method


# virtual methods
.method public ˊ(Lo/act;)Z
    .locals 6

    .line 29
    iget-object v3, p0, Lo/acu;->bxY:Ljava/security/PublicKey;

    .line 30
    invoke-interface {p1}, Lo/act;->wJ()[B

    move-result-object v4

    .line 31
    if-eqz v4, :cond_0

    array-length v0, v4

    if-nez v0, :cond_1

    .line 32
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 36
    :cond_1
    :try_start_0
    iget-object v0, p0, Lo/acu;->bxZ:Ljava/lang/String;

    iget-object v1, p0, Lo/acu;->bya:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v5

    .line 37
    invoke-virtual {v5, v3}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 38
    invoke-interface {p1}, Lo/act;->wI()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/security/Signature;->update([B)V

    .line 39
    invoke-virtual {v5, v4}, Ljava/security/Signature;->verify([B)Z
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 40
    :catch_0
    move-exception v5

    .line 42
    new-instance v0, Lo/acv;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not verify "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lo/acv;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
