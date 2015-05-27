.class Lo/ᑊ;
.super Ljava/lang/Object;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ˊ(Lo/ᐩ$if;)Landroid/os/Bundle;
    .locals 3

    .line 47
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 48
    const-string v0, "resultKey"

    invoke-virtual {p0}, Lo/ᐩ$if;->getResultKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v0, "label"

    invoke-virtual {p0}, Lo/ᐩ$if;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 50
    const-string v0, "choices"

    invoke-virtual {p0}, Lo/ᐩ$if;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 51
    const-string v0, "allowFreeFormInput"

    invoke-virtual {p0}, Lo/ᐩ$if;->getAllowFreeFormInput()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 52
    const-string v0, "extras"

    invoke-virtual {p0}, Lo/ᐩ$if;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 53
    return-object v2
.end method

.method static ˋ([Lo/ᐩ$if;)[Landroid/os/Bundle;
    .locals 3

    .line 69
    if-nez p0, :cond_0

    .line 70
    const/4 v0, 0x0

    return-object v0

    .line 72
    :cond_0
    array-length v0, p0

    new-array v1, v0, [Landroid/os/Bundle;

    .line 73
    const/4 v2, 0x0

    :goto_0
    array-length v0, p0

    if-ge v2, v0, :cond_1

    .line 74
    aget-object v0, p0, v2

    invoke-static {v0}, Lo/ᑊ;->ˊ(Lo/ᐩ$if;)Landroid/os/Bundle;

    move-result-object v0

    aput-object v0, v1, v2

    .line 73
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    :cond_1
    return-object v1
.end method
