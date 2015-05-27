.class public Lorg/spongycastle/i18n/LocalizedMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;
    }
.end annotation


# instance fields
.field protected final aWe:Ljava/lang/String;

.field protected aWf:Ljava/lang/String;

.field protected aWg:Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;

.field protected aWh:Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;

.field protected final id:Ljava/lang/String;

.field protected ﺀ:Ljava/lang/ClassLoader;


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 463
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 464
    const-string v0, "Resource: \""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/i18n/LocalizedMessage;->aWe:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 465
    const-string v0, "\" Id: \""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/i18n/LocalizedMessage;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 466
    const-string v0, " Arguments: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/i18n/LocalizedMessage;->aWg:Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-virtual {v1}, Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;->ny()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " normal"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 467
    iget-object v0, p0, Lorg/spongycastle/i18n/LocalizedMessage;->aWh:Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/i18n/LocalizedMessage;->aWh:Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-virtual {v0}, Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;->ny()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 469
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/i18n/LocalizedMessage;->aWh:Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-virtual {v1}, Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;->ny()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " extra"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 471
    :cond_0
    const-string v0, " Encoding: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/i18n/LocalizedMessage;->aWf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 472
    const-string v0, " ClassLoader: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/i18n/LocalizedMessage;->ﺀ:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 473
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
