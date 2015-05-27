.class public Lo/ᐪ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ᐪ$aux;,
        Lo/ᐪ$ˏ;,
        Lo/ᐪ$ˎ;,
        Lo/ᐪ$ˋ;,
        Lo/ᐪ$if;,
        Lo/ᐪ$ˊ;
    }
.end annotation


# static fields
.field static final ʟ:Lo/ᐪ$ˊ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 174
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 175
    const/16 v0, 0x16

    if-lt v1, v0, :cond_0

    .line 176
    new-instance v0, Lo/ᐪ$aux;

    invoke-direct {v0}, Lo/ᐪ$aux;-><init>()V

    sput-object v0, Lo/ᐪ;->ʟ:Lo/ᐪ$ˊ;

    goto :goto_0

    .line 177
    :cond_0
    const/16 v0, 0x15

    if-lt v1, v0, :cond_1

    .line 178
    new-instance v0, Lo/ᐪ$ˏ;

    invoke-direct {v0}, Lo/ᐪ$ˏ;-><init>()V

    sput-object v0, Lo/ᐪ;->ʟ:Lo/ᐪ$ˊ;

    goto :goto_0

    .line 179
    :cond_1
    const/16 v0, 0x13

    if-lt v1, v0, :cond_2

    .line 180
    new-instance v0, Lo/ᐪ$ˎ;

    invoke-direct {v0}, Lo/ᐪ$ˎ;-><init>()V

    sput-object v0, Lo/ᐪ;->ʟ:Lo/ᐪ$ˊ;

    goto :goto_0

    .line 181
    :cond_2
    const/16 v0, 0xb

    if-lt v1, v0, :cond_3

    .line 182
    new-instance v0, Lo/ᐪ$ˋ;

    invoke-direct {v0}, Lo/ᐪ$ˋ;-><init>()V

    sput-object v0, Lo/ᐪ;->ʟ:Lo/ᐪ$ˊ;

    goto :goto_0

    .line 184
    :cond_3
    new-instance v0, Lo/ᐪ$if;

    invoke-direct {v0}, Lo/ᐪ$if;-><init>()V

    sput-object v0, Lo/ᐪ;->ʟ:Lo/ᐪ$ˊ;

    .line 186
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    return-void
.end method

.method public static ˊ(Landroid/graphics/drawable/Drawable;FF)V
    .locals 1

    .line 239
    sget-object v0, Lo/ᐪ;->ʟ:Lo/ᐪ$ˊ;

    invoke-interface {v0, p0, p1, p2}, Lo/ᐪ$ˊ;->ˊ(Landroid/graphics/drawable/Drawable;FF)V

    .line 240
    return-void
.end method

.method public static ˊ(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    .line 260
    sget-object v0, Lo/ᐪ;->ʟ:Lo/ᐪ$ˊ;

    invoke-interface {v0, p0, p1}, Lo/ᐪ$ˊ;->ˊ(Landroid/graphics/drawable/Drawable;I)V

    .line 261
    return-void
.end method

.method public static ˊ(Landroid/graphics/drawable/Drawable;IIII)V
    .locals 6

    .line 250
    sget-object v0, Lo/ᐪ;->ʟ:Lo/ᐪ$ˊ;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lo/ᐪ$ˊ;->ˊ(Landroid/graphics/drawable/Drawable;IIII)V

    .line 251
    return-void
.end method

.method public static ˊ(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 270
    sget-object v0, Lo/ᐪ;->ʟ:Lo/ᐪ$ˊ;

    invoke-interface {v0, p0, p1}, Lo/ᐪ$ˊ;->ˊ(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 271
    return-void
.end method

.method public static ˊ(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 280
    sget-object v0, Lo/ᐪ;->ʟ:Lo/ᐪ$ˊ;

    invoke-interface {v0, p0, p1}, Lo/ᐪ$ˊ;->ˊ(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 281
    return-void
.end method

.method public static ˊ(Landroid/graphics/drawable/Drawable;Z)V
    .locals 1

    .line 213
    sget-object v0, Lo/ᐪ;->ʟ:Lo/ᐪ$ˊ;

    invoke-interface {v0, p0, p1}, Lo/ᐪ$ˊ;->ˊ(Landroid/graphics/drawable/Drawable;Z)V

    .line 214
    return-void
.end method

.method public static ˋ(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 197
    sget-object v0, Lo/ᐪ;->ʟ:Lo/ᐪ$ˊ;

    invoke-interface {v0, p0}, Lo/ᐪ$ˊ;->ˋ(Landroid/graphics/drawable/Drawable;)V

    .line 198
    return-void
.end method

.method public static ˎ(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 228
    sget-object v0, Lo/ᐪ;->ʟ:Lo/ᐪ$ˊ;

    invoke-interface {v0, p0}, Lo/ᐪ$ˊ;->ˎ(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method

.method public static ˏ(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 299
    sget-object v0, Lo/ᐪ;->ʟ:Lo/ᐪ$ˊ;

    invoke-interface {v0, p0}, Lo/ᐪ$ˊ;->ˏ(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
