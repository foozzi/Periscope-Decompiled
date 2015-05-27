.class public final Lo/h;
.super Ljava/lang/Object;


# direct methods
.method public static ʾ(Ljava/util/List;)[Lcom/google/android/gms/common/api/Scope;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Ljava/lang/String;>;)[Lcom/google/android/gms/common/api/Scope;"
        }
    .end annotation

    const-string v0, "scopeStrings can\'t be null."

    invoke-static {p0, v0}, Lo/ﺧ;->ʼ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Lcom/google/android/gms/common/api/Scope;

    const/4 v3, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    aput-object v0, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method
