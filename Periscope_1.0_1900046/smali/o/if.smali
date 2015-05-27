.class public Lo/if;
.super Lo/ᵣ;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/if$if;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lo/ᵣ;-><init>()V

    .line 217
    return-void
.end method

.method private static ˊ(Lo/ᕀ;)Lo/ˊ$if;
    .locals 2

    .line 210
    const/4 v1, 0x0

    .line 211
    if-eqz p0, :cond_0

    .line 212
    new-instance v1, Lo/if$if;

    invoke-direct {v1, p0}, Lo/if$if;-><init>(Lo/ᕀ;)V

    .line 214
    :cond_0
    return-object v1
.end method

.method public static ˊ(Landroid/app/Activity;)V
    .locals 2

    .line 158
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 159
    invoke-static {p0}, Lo/ˊ;->ˊ(Landroid/app/Activity;)V

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 163
    :goto_0
    return-void
.end method

.method public static ˊ(Landroid/app/Activity;Lo/ᕀ;)V
    .locals 2

    .line 175
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 176
    invoke-static {p1}, Lo/if;->ˊ(Lo/ᕀ;)Lo/ˊ$if;

    move-result-object v0

    invoke-static {p0, v0}, Lo/ˊ;->ˊ(Landroid/app/Activity;Lo/ˊ$if;)V

    .line 178
    :cond_0
    return-void
.end method

.method public static ˋ(Landroid/app/Activity;)V
    .locals 2

    .line 197
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 198
    invoke-static {p0}, Lo/ˊ;->ˋ(Landroid/app/Activity;)V

    .line 200
    :cond_0
    return-void
.end method

.method public static ˋ(Landroid/app/Activity;Lo/ᕀ;)V
    .locals 2

    .line 191
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 192
    invoke-static {p1}, Lo/if;->ˊ(Lo/ᕀ;)Lo/ˊ$if;

    move-result-object v0

    invoke-static {p0, v0}, Lo/ˊ;->ˋ(Landroid/app/Activity;Lo/ˊ$if;)V

    .line 194
    :cond_0
    return-void
.end method

.method public static ˎ(Landroid/app/Activity;)V
    .locals 2

    .line 203
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 204
    invoke-static {p0}, Lo/ˊ;->ˎ(Landroid/app/Activity;)V

    .line 206
    :cond_0
    return-void
.end method
