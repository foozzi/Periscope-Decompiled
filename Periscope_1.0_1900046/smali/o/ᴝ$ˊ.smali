.class Lo/ᴝ$ˊ;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᴝ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "\u02ca"
.end annotation


# instance fields
.field public final Dw:Lo/ᒴ;

.field public final Dz:Lo/ᒴ$ˋ;


# direct methods
.method private constructor <init>(Lo/ᒴ;Lo/ᒴ$ˋ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ᴝ$ˊ;->Dw:Lo/ᒴ;

    iput-object p2, p0, Lo/ᴝ$ˊ;->Dz:Lo/ᒴ$ˋ;

    return-void
.end method

.method synthetic constructor <init>(Lo/ᒴ;Lo/ᒴ$ˋ;Lo/ᴝ$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/ᴝ$ˊ;-><init>(Lo/ᒴ;Lo/ᒴ$ˋ;)V

    return-void
.end method
