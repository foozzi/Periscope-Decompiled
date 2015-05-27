.class public Lo/aeh$ˎ;
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
    name = "\u02ce"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/aeh<Lcom/google/android/gms/maps/model/LatLng;>;"
    }
.end annotation


# instance fields
.field private final bzP:Lcom/google/android/gms/maps/model/LatLng;


# direct methods
.method public constructor <init>(DD)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lo/aeh$ˎ;->bzP:Lcom/google/android/gms/maps/model/LatLng;

    .line 54
    return-void
.end method


# virtual methods
.method public xB()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .line 63
    iget-object v0, p0, Lo/aeh$ˎ;->bzP:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public xy()Lo/aeh$ʻ;
    .locals 1

    .line 58
    sget-object v0, Lo/aeh$ʻ;->bAp:Lo/aeh$ʻ;

    return-object v0
.end method
