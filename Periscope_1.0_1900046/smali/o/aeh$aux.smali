.class public Lo/aeh$aux;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/aeh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/aeh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "aux"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/aeh<Lo/aeh$\u141d;>;"
    }
.end annotation


# instance fields
.field private final bAl:Lo/aeh$ᐝ;


# direct methods
.method public constructor <init>(Lo/aeh$ᐝ;)V
    .locals 0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p1, p0, Lo/aeh$aux;->bAl:Lo/aeh$ᐝ;

    .line 172
    return-void
.end method


# virtual methods
.method public xF()Lo/aeh$ᐝ;
    .locals 1

    .line 181
    iget-object v0, p0, Lo/aeh$aux;->bAl:Lo/aeh$ᐝ;

    return-object v0
.end method

.method public xy()Lo/aeh$ʻ;
    .locals 1

    .line 176
    sget-object v0, Lo/aeh$ʻ;->bAt:Lo/aeh$ʻ;

    return-object v0
.end method
