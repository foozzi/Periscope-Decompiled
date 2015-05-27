.class public abstract Lo/anv;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ˋ(Lo/fz;)Lo/anv;
    .locals 6

    .line 38
    new-instance v0, Lo/ans;

    const-string v1, "id"

    invoke-static {p0, v1}, Lo/anq;->ˊ(Lo/fz;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pub_nub_profile_image"

    invoke-static {p0, v2}, Lo/anq;->ˊ(Lo/fz;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "display_name"

    invoke-static {p0, v3}, Lo/anq;->ˊ(Lo/fz;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "username"

    invoke-static {p0, v4}, Lo/anq;->ˊ(Lo/fz;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "participant_index"

    invoke-static {p0, v5}, Lo/anq;->ˋ(Lo/fz;Ljava/lang/String;)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lo/ans;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public abstract Cl()Ljava/lang/String;
.end method

.method public abstract Cv()Ljava/lang/String;
.end method

.method public abstract Cw()I
.end method

.method public abstract displayName()Ljava/lang/String;
.end method

.method public abstract id()Ljava/lang/String;
.end method
