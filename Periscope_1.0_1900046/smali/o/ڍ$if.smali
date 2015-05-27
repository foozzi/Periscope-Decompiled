.class Lo/ڍ$if;
.super Lo/ŗ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ڍ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation


# instance fields
.field private final ᒴ:Lo/ฯ;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lo/ฯ;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lo/ŗ;-><init>(Landroid/content/res/Resources;)V

    .line 62
    iput-object p2, p0, Lo/ڍ$if;->ᒴ:Lo/ฯ;

    .line 63
    return-void
.end method


# virtual methods
.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 72
    invoke-super {p0, p1}, Lo/ŗ;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 73
    if-eqz v1, :cond_0

    .line 74
    iget-object v0, p0, Lo/ڍ$if;->ᒴ:Lo/ฯ;

    invoke-virtual {v0, p1, v1}, Lo/ฯ;->ˊ(ILandroid/graphics/drawable/Drawable;)Z

    .line 76
    :cond_0
    return-object v1
.end method
