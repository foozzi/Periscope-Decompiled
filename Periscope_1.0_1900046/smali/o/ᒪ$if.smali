.class final Lo/ᒪ$if;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ᒧ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᒪ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "if"
.end annotation


# instance fields
.field private final iP:Lo/ᒪ$ˊ;

.field private ip:Landroid/graphics/Bitmap$Config;

.field private size:I


# direct methods
.method public constructor <init>(Lo/ᒪ$ˊ;)V
    .locals 0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p1, p0, Lo/ᒪ$if;->iP:Lo/ᒪ$ˊ;

    .line 180
    return-void
.end method

.method static synthetic ˊ(Lo/ᒪ$if;)I
    .locals 1

    .line 172
    iget v0, p0, Lo/ᒪ$if;->size:I

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 205
    instance-of v0, p1, Lo/ᒪ$if;

    if-eqz v0, :cond_2

    .line 206
    move-object v0, p1

    check-cast v0, Lo/ᒪ$if;

    move-object v2, v0

    .line 207
    iget v0, p0, Lo/ᒪ$if;->size:I

    iget v1, v2, Lo/ᒪ$if;->size:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lo/ᒪ$if;->ip:Landroid/graphics/Bitmap$Config;

    if-nez v0, :cond_0

    iget-object v0, v2, Lo/ᒪ$if;->ip:Landroid/graphics/Bitmap$Config;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/ᒪ$if;->ip:Landroid/graphics/Bitmap$Config;

    iget-object v1, v2, Lo/ᒪ$if;->ip:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 209
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 214
    iget v2, p0, Lo/ᒪ$if;->size:I

    .line 215
    mul-int/lit8 v0, v2, 0x1f

    iget-object v1, p0, Lo/ᒪ$if;->ip:Landroid/graphics/Bitmap$Config;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/ᒪ$if;->ip:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int v2, v0, v1

    .line 216
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 200
    iget v0, p0, Lo/ᒪ$if;->size:I

    iget-object v1, p0, Lo/ᒪ$if;->ip:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1}, Lo/ᒪ;->ˋ(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ˎ(ILandroid/graphics/Bitmap$Config;)V
    .locals 0

    .line 189
    iput p1, p0, Lo/ᒪ$if;->size:I

    .line 190
    iput-object p2, p0, Lo/ᒪ$if;->ip:Landroid/graphics/Bitmap$Config;

    .line 191
    return-void
.end method

.method public ᒫ()V
    .locals 1

    .line 195
    iget-object v0, p0, Lo/ᒪ$if;->iP:Lo/ᒪ$ˊ;

    invoke-virtual {v0, p0}, Lo/ᒪ$ˊ;->ˊ(Lo/ᒧ;)V

    .line 196
    return-void
.end method
