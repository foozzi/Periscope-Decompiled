.class Lo/ܢ$if;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ᒧ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ܢ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation


# instance fields
.field private height:I

.field private final io:Lo/ܢ$ˊ;

.field private ip:Landroid/graphics/Bitmap$Config;

.field private width:I


# direct methods
.method public constructor <init>(Lo/ܢ$ˊ;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lo/ܢ$if;->io:Lo/ܢ$ˊ;

    .line 84
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 94
    instance-of v0, p1, Lo/ܢ$if;

    if-eqz v0, :cond_1

    .line 95
    move-object v0, p1

    check-cast v0, Lo/ܢ$if;

    move-object v2, v0

    .line 96
    iget v0, p0, Lo/ܢ$if;->width:I

    iget v1, v2, Lo/ܢ$if;->width:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lo/ܢ$if;->height:I

    iget v1, v2, Lo/ܢ$if;->height:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/ܢ$if;->ip:Landroid/graphics/Bitmap$Config;

    iget-object v1, v2, Lo/ܢ$if;->ip:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 100
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 105
    iget v2, p0, Lo/ܢ$if;->width:I

    .line 106
    mul-int/lit8 v0, v2, 0x1f

    iget v1, p0, Lo/ܢ$if;->height:I

    add-int v2, v0, v1

    .line 107
    mul-int/lit8 v0, v2, 0x1f

    iget-object v1, p0, Lo/ܢ$if;->ip:Landroid/graphics/Bitmap$Config;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/ܢ$if;->ip:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int v2, v0, v1

    .line 108
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 113
    iget v0, p0, Lo/ܢ$if;->width:I

    iget v1, p0, Lo/ܢ$if;->height:I

    iget-object v2, p0, Lo/ܢ$if;->ip:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Lo/ܢ;->ᐝ(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ʻ(IILandroid/graphics/Bitmap$Config;)V
    .locals 0

    .line 87
    iput p1, p0, Lo/ܢ$if;->width:I

    .line 88
    iput p2, p0, Lo/ܢ$if;->height:I

    .line 89
    iput-object p3, p0, Lo/ܢ$if;->ip:Landroid/graphics/Bitmap$Config;

    .line 90
    return-void
.end method

.method public ᒫ()V
    .locals 1

    .line 118
    iget-object v0, p0, Lo/ܢ$if;->io:Lo/ܢ$ˊ;

    invoke-virtual {v0, p0}, Lo/ܢ$ˊ;->ˊ(Lo/ᒧ;)V

    .line 119
    return-void
.end method
