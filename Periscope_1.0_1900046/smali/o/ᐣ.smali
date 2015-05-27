.class Lo/ᐣ;
.super Ljava/lang/Object;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ˊ([Lo/ᐩ$if;)[Landroid/app/RemoteInput;
    .locals 5

    .line 39
    if-nez p0, :cond_0

    .line 40
    const/4 v0, 0x0

    return-object v0

    .line 42
    :cond_0
    array-length v0, p0

    new-array v2, v0, [Landroid/app/RemoteInput;

    .line 43
    const/4 v3, 0x0

    :goto_0
    array-length v0, p0

    if-ge v3, v0, :cond_1

    .line 44
    aget-object v4, p0, v3

    .line 45
    new-instance v0, Landroid/app/RemoteInput$Builder;

    invoke-virtual {v4}, Lo/ᐩ$if;->getResultKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lo/ᐩ$if;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v0

    invoke-virtual {v4}, Lo/ᐩ$if;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v0

    invoke-virtual {v4}, Lo/ᐩ$if;->getAllowFreeFormInput()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/RemoteInput$Builder;->setAllowFreeFormInput(Z)Landroid/app/RemoteInput$Builder;

    move-result-object v0

    invoke-virtual {v4}, Lo/ᐩ$if;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/RemoteInput$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/RemoteInput$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/RemoteInput$Builder;->build()Landroid/app/RemoteInput;

    move-result-object v0

    aput-object v0, v2, v3

    .line 43
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 52
    :cond_1
    return-object v2
.end method
