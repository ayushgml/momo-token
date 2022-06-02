var MomoToken = artifacts.require( "./MomoToken.sol" );

contract( 'MomoToken', function ( accounts ) {
    it( 'sets the total supply upon deployment', function () {
        return MomoToken.deployed().then( function ( instance ) {
            tokenInstance = instance;
            return tokenInstance.totalSupply();
        } ).then( function ( totalSupply ) {
            assert.equal( totalSupply.toNumber(), 1000000, 'sets the total supply to 1,000,000' );
            // return tokenInstance.balanceOf( accounts[0] );
        } );
    } );
})