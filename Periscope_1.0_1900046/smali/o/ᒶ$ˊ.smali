.class public final Lo/ᒶ$ˊ;
.super Lo/ᒶ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᒶ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "\u02ca"
.end annotation


# instance fields
.field public final wi:Lo/প;


# direct methods
.method public constructor <init>(ILo/প;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lo/ᒶ;-><init>(I)V

    .line 110
    iput-object p2, p0, Lo/ᒶ$ˊ;->wi:Lo/প;

    .line 111
    return-void
.end method


# virtual methods
.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 104
    invoke-super {p0}, Lo/ᒶ;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
